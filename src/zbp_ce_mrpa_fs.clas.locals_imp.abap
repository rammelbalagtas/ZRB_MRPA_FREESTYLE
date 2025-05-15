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

    DATA lt_mrp TYPE TABLE OF zae_zmrp_mrp.
    DATA lt_customer TYPE TABLE OF zae_zmrp_customer.

    SELECT * FROM zmrpadb WHERE plant = 'YYZA' AND material = 'KXTGD390A' INTO TABLE @DATA(lt_zmrpa).
    ls_data-name = 'KXTGD390A'.
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
    ENDLOOP.

    result = VALUE #( ( %cid = keys[ 1 ]-%cid
                      %param = ls_data ) ) .

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
