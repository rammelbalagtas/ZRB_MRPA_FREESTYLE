CLASS zcl_ce_mrpvh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CE_MRPVH IMPLEMENTATION.


  METHOD if_rap_query_provider~select.
    CASE io_request->get_entity_id( ).
      WHEN `ZCE_MRPVH`.
        TRY.
            "filter
            DATA(lv_sql_filter) = io_request->get_filter( )->get_as_sql_string( ).
            TRY.
                DATA(lt_filter) = io_request->get_filter( )->get_as_ranges( ).
              CATCH cx_rap_query_filter_no_range.
                "handle exception
            ENDTRY.

            "paging
            DATA(lv_offset) = io_request->get_paging( )->get_offset( ).
            DATA(lv_page_size) = io_request->get_paging( )->get_page_size( ).
            DATA(lv_max_rows) = COND #( WHEN lv_page_size = if_rap_query_paging=>page_size_unlimited
                                        THEN 0 ELSE lv_page_size ).
            "sorting
            DATA(sort_elements) = io_request->get_sort_elements( ).
            DATA(lt_sort_criteria) = VALUE string_table( FOR sort_element IN sort_elements
                                                       ( sort_element-element_name && COND #( WHEN sort_element-descending = abap_true THEN ` descending`
                                                                                                                                       ELSE ` ascending` ) ) ).
            DATA(lv_sort_string)  = COND #( WHEN lt_sort_criteria IS INITIAL THEN `primary key`
                                                                             ELSE concat_lines_of( table = lt_sort_criteria sep = `, ` ) ).
            "requested elements
            DATA(lt_req_elements) = io_request->get_requested_elements( ).
            DATA(lv_req_elements)  = concat_lines_of( table = lt_req_elements sep = `, ` ).

            IF io_request->is_data_requested( ).
              DATA lt_data TYPE STANDARD TABLE OF zce_mrpvh.
              APPEND INITIAL LINE TO lt_data ASSIGNING FIELD-SYMBOL(<fs_data>).
              <fs_data>-mrp = 'NSRST'.
              <fs_data>-name = 'NSRST 1'.
              APPEND INITIAL LINE TO lt_data ASSIGNING <fs_data>.
              <fs_data>-mrp = 'PAMZT1'.
              <fs_data>-name = 'PAMZT 1'.
              APPEND INITIAL LINE TO lt_data ASSIGNING <fs_data>.
              <fs_data>-mrp = 'PAMZT2'.
              <fs_data>-name = 'PAMZT 2'.
              APPEND INITIAL LINE TO lt_data ASSIGNING <fs_data>.
              <fs_data>-mrp = 'PAMZT3'.
              <fs_data>-name = 'PAMZT 3'.
              APPEND INITIAL LINE TO lt_data ASSIGNING <fs_data>.
              <fs_data>-mrp = 'PAMZT4'.
              <fs_data>-name = 'PAMZT 4'.
              io_response->set_data( lt_data ).
            ENDIF.

            IF io_request->is_total_numb_of_rec_requested( ).
              io_response->set_total_number_of_records( 4 ).
            ENDIF.

          CATCH cx_rap_query_provider.
        ENDTRY.
      WHEN OTHERS.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
