CLASS LHC_RAP_TDAT_CTS DEFINITION FINAL.
  PUBLIC SECTION.
    CLASS-METHODS:
      GET
        RETURNING
          VALUE(RESULT) TYPE REF TO IF_MBC_CP_RAP_TDAT_CTS.

ENDCLASS.

CLASS LHC_RAP_TDAT_CTS IMPLEMENTATION.
  METHOD GET.
    result = mbc_cp_api=>rap_tdat_cts( tdat_name = 'ZZMRPATABLE'
                                       table_entity_relations = VALUE #(
                                         ( entity = 'ZmrpaTable' table = 'ZMRPADB' )
                                       ) ) ##NO_TEXT.
  ENDMETHOD.
ENDCLASS.
CLASS LHC_ZI_ZMRPATABLE_S DEFINITION FINAL INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_INSTANCE_FEATURES FOR INSTANCE FEATURES
        IMPORTING
          KEYS REQUEST requested_features FOR ZmrpaTableAll
        RESULT result,
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR ZmrpaTableAll
        RESULT result.
ENDCLASS.

CLASS LHC_ZI_ZMRPATABLE_S IMPLEMENTATION.
  METHOD GET_INSTANCE_FEATURES.
    DATA: edit_flag            TYPE abp_behv_op_ctrl    VALUE if_abap_behv=>fc-o-enabled.

*    IF lhc_rap_tdat_cts=>get( )->is_editable( ) = abap_false.
*      edit_flag = if_abap_behv=>fc-o-disabled.
*    ENDIF.
    result = VALUE #( FOR key in keys (
               %TKY = key-%TKY
               %ACTION-edit = edit_flag
               %ASSOC-_ZmrpaTable = edit_flag ) ).
  ENDMETHOD.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
*    AUTHORITY-CHECK OBJECT 'S_TABU_NAM' ID 'TABLE' FIELD 'ZI_ZMRPATABLE' ID 'ACTVT' FIELD '02'.
*    DATA(is_authorized) = COND #( WHEN sy-subrc = 0 THEN if_abap_behv=>auth-allowed
*                                  ELSE if_abap_behv=>auth-unauthorized ).
    DATA(is_authorized) = if_abap_behv=>auth-allowed.
    result-%UPDATE      = is_authorized.
    result-%ACTION-Edit = is_authorized.
  ENDMETHOD.
ENDCLASS.
CLASS LSC_ZI_ZMRPATABLE_S DEFINITION FINAL INHERITING FROM CL_ABAP_BEHAVIOR_SAVER.
  PROTECTED SECTION.
    METHODS:
      SAVE_MODIFIED REDEFINITION.
ENDCLASS.

CLASS LSC_ZI_ZMRPATABLE_S IMPLEMENTATION.
  METHOD SAVE_MODIFIED ##NEEDED.
  ENDMETHOD.
ENDCLASS.
CLASS LHC_ZI_ZMRPATABLE DEFINITION FINAL INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_FEATURES FOR GLOBAL FEATURES
        IMPORTING
          REQUEST REQUESTED_FEATURES FOR ZmrpaTable
        RESULT result,
      COPYZMRPATABLE FOR MODIFY
        IMPORTING
          KEYS FOR ACTION ZmrpaTable~CopyZmrpaTable,
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR ZmrpaTable
        RESULT result,
      GET_INSTANCE_FEATURES FOR INSTANCE FEATURES
        IMPORTING
          KEYS REQUEST requested_features FOR ZmrpaTable
        RESULT result.
ENDCLASS.

CLASS LHC_ZI_ZMRPATABLE IMPLEMENTATION.
  METHOD GET_GLOBAL_FEATURES.
    DATA edit_flag TYPE abp_behv_op_ctrl VALUE if_abap_behv=>fc-o-enabled.
    IF lhc_rap_tdat_cts=>get( )->is_editable( ) = abap_false.
      edit_flag = if_abap_behv=>fc-o-disabled.
    ENDIF.
    result-%UPDATE = edit_flag.
    result-%DELETE = edit_flag.
  ENDMETHOD.
  METHOD COPYZMRPATABLE.
    DATA new_ZmrpaTable TYPE TABLE FOR CREATE ZI_ZmrpaTable_S\_ZmrpaTable.

    IF lines( keys ) > 1.
      INSERT mbc_cp_api=>message( )->get_select_only_one_entry( ) INTO TABLE reported-%other.
      failed-ZmrpaTable = VALUE #( FOR fkey IN keys ( %TKY = fkey-%TKY ) ).
      RETURN.
    ENDIF.

    READ ENTITIES OF ZI_ZmrpaTable_S IN LOCAL MODE
      ENTITY ZmrpaTable
        ALL FIELDS WITH CORRESPONDING #( keys )
        RESULT DATA(ref_ZmrpaTable)
        FAILED DATA(read_failed).

    IF ref_ZmrpaTable IS NOT INITIAL.
      ASSIGN ref_ZmrpaTable[ 1 ] TO FIELD-SYMBOL(<ref_ZmrpaTable>).
      DATA(key) = keys[ KEY draft %TKY = <ref_ZmrpaTable>-%TKY ].
      DATA(key_cid) = key-%CID.
      APPEND VALUE #(
        %TKY-SingletonID = 1
        %IS_DRAFT = <ref_ZmrpaTable>-%IS_DRAFT
        %TARGET = VALUE #( (
          %CID = key_cid
          %IS_DRAFT = <ref_ZmrpaTable>-%IS_DRAFT
          %DATA = CORRESPONDING #( <ref_ZmrpaTable> EXCEPT
          SingletonID
        ) ) )
      ) TO new_ZmrpaTable ASSIGNING FIELD-SYMBOL(<new_ZmrpaTable>).
      <new_ZmrpaTable>-%TARGET[ 1 ]-Plant = to_upper( key-%PARAM-Plant ).
      <new_ZmrpaTable>-%TARGET[ 1 ]-Mrp = to_upper( key-%PARAM-Mrp ).
      <new_ZmrpaTable>-%TARGET[ 1 ]-Customer = to_upper( key-%PARAM-Customer ).
      <new_ZmrpaTable>-%TARGET[ 1 ]-Material = to_upper( key-%PARAM-Material ).

      MODIFY ENTITIES OF ZI_ZmrpaTable_S IN LOCAL MODE
        ENTITY ZmrpaTableAll CREATE BY \_ZmrpaTable
        FIELDS (
                 Plant
                 Mrp
                 Customer
                 Material
                 Opendelivery
                 Boqty
                 Unr
                 Qa
                 Block
                 Available
                 Createdby
                 Createdat
                 Lastchangedby
                 Lastchangedat
               ) WITH new_ZmrpaTable
        MAPPED DATA(mapped_create)
        FAILED failed
        REPORTED reported.

      mapped-ZmrpaTable = mapped_create-ZmrpaTable.
    ENDIF.

    INSERT LINES OF read_failed-ZmrpaTable INTO TABLE failed-ZmrpaTable.

    IF failed-ZmrpaTable IS INITIAL.
      reported-ZmrpaTable = VALUE #( FOR created IN mapped-ZmrpaTable (
                                                 %CID = created-%CID
                                                 %ACTION-CopyZmrpaTable = if_abap_behv=>mk-on
                                                 %MSG = mbc_cp_api=>message( )->get_item_copied( )
                                                 %PATH-ZmrpaTableAll-%IS_DRAFT = created-%IS_DRAFT
                                                 %PATH-ZmrpaTableAll-SingletonID = 1 ) ).
    ENDIF.
  ENDMETHOD.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
    AUTHORITY-CHECK OBJECT 'S_TABU_NAM' ID 'TABLE' FIELD 'ZI_ZMRPATABLE' ID 'ACTVT' FIELD '02'.
    DATA(is_authorized) = COND #( WHEN sy-subrc = 0 THEN if_abap_behv=>auth-allowed
                                  ELSE if_abap_behv=>auth-unauthorized ).
    result-%ACTION-CopyZmrpaTable = is_authorized.
  ENDMETHOD.
  METHOD GET_INSTANCE_FEATURES.
    result = VALUE #( FOR row IN keys ( %TKY = row-%TKY
                                        %ACTION-CopyZmrpaTable = COND #( WHEN row-%IS_DRAFT = if_abap_behv=>mk-off THEN if_abap_behv=>fc-o-disabled ELSE if_abap_behv=>fc-o-enabled )
    ) ).
  ENDMETHOD.
ENDCLASS.
