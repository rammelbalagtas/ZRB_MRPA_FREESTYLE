CLASS lhc_ZMRPA DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zmrpa RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zmrpa.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zmrpa.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zmrpa.

    METHODS read FOR READ
      IMPORTING keys FOR READ zmrpa RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zmrpa.
    METHODS getmrpdata FOR MODIFY
      IMPORTING keys FOR ACTION zmrpa~getmrpdata RESULT result.
    METHODS savemrpdata FOR MODIFY
      IMPORTING keys FOR ACTION zmrpa~savemrpdata.

ENDCLASS.

CLASS lhc_ZMRPA IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD getMRPData.

    DATA: ls_data TYPE STRUCTURE FOR HIERARCHY zae_zmrp_material\\material.
    DATA: lt_matrange TYPE RANGE OF zde_material.
    DATA: lv_material TYPE zde_material.
    DATA: lt_mrprange TYPE RANGE OF zmrp.

    DATA lt_mrp TYPE TABLE OF zae_zmrp_mrp.
    DATA lt_customer TYPE TABLE OF zae_zmrp_customer.

    DATA(ls_key) = keys[ 1 ].
    IF ls_key-%param-material IS NOT INITIAL.
       lv_material = ls_key-%param-material.
    ELSE.
      IF ls_key-%param-matrange IS NOT INITIAL.
        LOOP AT ls_key-%param-matrange INTO DATA(ls_material).
          APPEND INITIAL LINE TO lt_matrange ASSIGNING FIELD-SYMBOL(<fs_material>).
          <fs_material>-sign = 'I'.
          <fs_material>-option = 'EQ'.
          <fs_material>-low = ls_material-material.
        ENDLOOP.
      ELSE.
        SELECT DISTINCT material FROM zmrpadb INTO TABLE @DATA(lt_matlist).
        LOOP AT lt_matlist INTO DATA(ls_material_db).
          APPEND INITIAL LINE TO lt_matrange ASSIGNING <fs_material>.
          <fs_material>-sign = 'I'.
          <fs_material>-option = 'EQ'.
          <fs_material>-low = ls_material_db-material.
        ENDLOOP.
      ENDIF.

      LOOP AT lt_matrange INTO DATA(ls_matrange).
        APPEND INITIAL LINE TO ls_data-matlist ASSIGNING FIELD-SYMBOL(<fs_matlist>).
        <fs_matlist>-material = ls_matrange-low.
      ENDLOOP.

      lv_material = lt_matrange[ 1 ]-low.
    ENDIF.

    IF ls_key-%param-mrprange IS NOT INITIAL.
      LOOP AT ls_key-%param-mrprange INTO DATA(ls_mrp).
        APPEND INITIAL LINE TO lt_mrprange ASSIGNING FIELD-SYMBOL(<fs_mrp_range>).
        <fs_mrp_range>-sign = 'I'.
        <fs_mrp_range>-option = 'EQ'.
        <fs_mrp_range>-low = ls_mrp-mrp.
      ENDLOOP.
    ENDIF.

    IF ls_key-%param-plant IS INITIAL.
      ls_key-%param-plant = 'YYZA'.
    ENDIF.

    SELECT * FROM zmrpadb WHERE plant = @ls_key-%param-plant AND mrp IN @lt_mrprange AND material = @lv_material INTO TABLE @DATA(lt_zmrpa).

    ls_data-name = lv_material.
    LOOP AT lt_zmrpa INTO DATA(ls_zmrpa)
                          GROUP BY ls_zmrpa-mrp.
      DATA(lv_tabix) = 0.
      LOOP AT GROUP ls_zmrpa INTO DATA(member).
        lv_tabix = lv_tabix + 1.
        IF lv_tabix = 1.
          ls_data-openDelivery = ls_data-openDelivery + member-openDelivery.
          ls_data-boQty = ls_data-boQty + member-boQty.
          ls_data-currentUNR = ls_data-currentUNR + member-unr.
          ls_data-currentQA = ls_data-currentQA + member-qa.
          ls_data-currentBlock = ls_data-currentBlock + member-block.
          APPEND INITIAL LINE TO ls_data-data ASSIGNING FIELD-SYMBOL(<fs_mrp>).
          <fs_mrp>-name = member-mrp.
          <fs_mrp>-mrp = member-mrp.
          <fs_mrp>-openDelivery = member-openDelivery.
          <fs_mrp>-boQty = member-boQty.
          <fs_mrp>-currentUNR = member-unr.
          <fs_mrp>-currentQA = member-qa.
          <fs_mrp>-currentBlock = member-block.
        ENDIF.
        APPEND INITIAL LINE TO <fs_mrp>-data ASSIGNING FIELD-SYMBOL(<fs_customer>).
        <fs_customer>-name = member-customer.
        <fs_customer>-mrp = member-mrp.
        ls_data-currentAvailable = ls_data-currentAvailable + member-available.
        <fs_mrp>-currentAvailable = <fs_mrp>-currentAvailable + member-available.
      ENDLOOP.
      IF lv_tabix = 1.
        CLEAR <fs_mrp>-data.
      ENDIF.
    ENDLOOP.

    result = VALUE #( ( %cid = keys[ 1 ]-%cid
                      %param = ls_data ) ) .

  ENDMETHOD.

  METHOD saveMRPData.
    DATA(lv_test) = 1.
    IF 1 = 1.
    ENDIF.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZCE_MRPA_FS DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZCE_MRPA_FS IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
