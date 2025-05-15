CLASS zmrpa_fs_datagenerator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmrpa_fs_datagenerator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA lt_zmrpadb TYPE STANDARD TABLE OF zmrpadb.
    DELETE FROM zmrpadb.

    "KXTGD390A
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'NSRST' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'NSRST' customer = '12186' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'NSRSE' customer = '' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 100 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT1' customer = '12358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT1' customer = '12356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT2' customer = '12368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT2' customer = '12365' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT3' customer = '12378' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT3' customer = '12376' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT4' customer = '13388' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT4' customer = '13386' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT5' customer = '13398' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT5' customer = '13396' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT6' customer = '13328' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT6' customer = '13326' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT7' customer = '13338' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT7' customer = '13336' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT8' customer = '13348' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT8' customer = '13346' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT9' customer = '13358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT9' customer = '13356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT10' customer = '13368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390A' mrp = 'PAMZT10' customer = '13366' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    "KXTGD390B
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'NSRST' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'NSRST' customer = '12186' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'NSRSE' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'NSRSE' customer = '' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 100 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT1' customer = '12358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT1' customer = '12356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT2' customer = '12368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT2' customer = '12365' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT3' customer = '12378' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT3' customer = '12376' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT4' customer = '13388' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT4' customer = '13386' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT5' customer = '13398' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT5' customer = '13396' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT6' customer = '13328' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT6' customer = '13326' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT7' customer = '13338' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT7' customer = '13336' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT8' customer = '13348' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT8' customer = '13346' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT9' customer = '13358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT9' customer = '13356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT10' customer = '13368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390B' mrp = 'PAMZT10' customer = '13366' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    "KXTGD390C
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'NSRST' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'NSRST' customer = '12186' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'NSRSE' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'NSRSE' customer = '' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 100 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT1' customer = '12358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT1' customer = '12356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT2' customer = '12368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT2' customer = '12365' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT3' customer = '12378' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT3' customer = '12376' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT4' customer = '13388' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT4' customer = '13386' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT5' customer = '13398' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT5' customer = '13396' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT6' customer = '13328' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT6' customer = '13326' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT7' customer = '13338' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT7' customer = '13336' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT8' customer = '13348' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT8' customer = '13346' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT9' customer = '13358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT9' customer = '13356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT10' customer = '13368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390C' mrp = 'PAMZT10' customer = '13366' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    "KXTGD390D
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'NSRST' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'NSRST' customer = '12186' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'NSRSE' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'NSRSE' customer = '' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 100 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT1' customer = '12358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT1' customer = '12356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT2' customer = '12368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT2' customer = '12365' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT3' customer = '12378' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT3' customer = '12376' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT4' customer = '13388' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT4' customer = '13386' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT5' customer = '13398' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT5' customer = '13396' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT6' customer = '13328' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT6' customer = '13326' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT7' customer = '13338' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT7' customer = '13336' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT8' customer = '13348' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT8' customer = '13346' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT9' customer = '13358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT9' customer = '13356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT10' customer = '13368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZA' material = 'KXTGD390D' mrp = 'PAMZT10' customer = '13366' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    "YYZB
    "KXTGD390A
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'NSRST' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'NSRST' customer = '12186' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'NSRSE' customer = '' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 100 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT1' customer = '12358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT1' customer = '12356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT2' customer = '12368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT2' customer = '12365' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT3' customer = '12378' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT3' customer = '12376' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT4' customer = '13388' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT4' customer = '13386' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT5' customer = '13398' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT5' customer = '13396' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT6' customer = '13328' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT6' customer = '13326' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT7' customer = '13338' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT7' customer = '13336' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT8' customer = '13348' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT8' customer = '13346' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT9' customer = '13358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT9' customer = '13356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT10' customer = '13368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390A' mrp = 'PAMZT10' customer = '13366' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    "KXTGD390B
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'NSRST' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'NSRST' customer = '12186' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'NSRSE' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'NSRSE' customer = '' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 100 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT1' customer = '12358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT1' customer = '12356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT2' customer = '12368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT2' customer = '12365' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT3' customer = '12378' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT3' customer = '12376' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT4' customer = '13388' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT4' customer = '13386' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT5' customer = '13398' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT5' customer = '13396' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT6' customer = '13328' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT6' customer = '13326' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT7' customer = '13338' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT7' customer = '13336' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT8' customer = '13348' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT8' customer = '13346' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT9' customer = '13358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT9' customer = '13356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT10' customer = '13368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390B' mrp = 'PAMZT10' customer = '13366' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    "KXTGD390C
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'NSRST' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'NSRST' customer = '12186' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'NSRSE' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'NSRSE' customer = '' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 100 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT1' customer = '12358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT1' customer = '12356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT2' customer = '12368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT2' customer = '12365' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT3' customer = '12378' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT3' customer = '12376' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT4' customer = '13388' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT4' customer = '13386' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT5' customer = '13398' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT5' customer = '13396' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT6' customer = '13328' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT6' customer = '13326' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT7' customer = '13338' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT7' customer = '13336' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT8' customer = '13348' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT8' customer = '13346' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT9' customer = '13358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT9' customer = '13356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT10' customer = '13368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390C' mrp = 'PAMZT10' customer = '13366' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    "KXTGD390D
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'NSRST' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'NSRST' customer = '12186' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'NSRSE' customer = '12185' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'NSRSE' customer = '' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 100 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT1' customer = '12358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT1' customer = '12356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT2' customer = '12368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT2' customer = '12365' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT3' customer = '12378' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT3' customer = '12376' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT4' customer = '13388' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT4' customer = '13386' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT5' customer = '13398' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT5' customer = '13396' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT6' customer = '13328' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT6' customer = '13326' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT7' customer = '13338' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT7' customer = '13336' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT8' customer = '13348' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT8' customer = '13346' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT9' customer = '13358' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT9' customer = '13356' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT10' customer = '13368' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.
    APPEND VALUE zmrpadb( plant = 'YYZB' material = 'KXTGD390D' mrp = 'PAMZT10' customer = '13366' opendelivery = 20 boqty = 0 unr = 100 qa = 20 block = 0 available = 50 ) TO lt_zmrpadb.

    INSERT zmrpadb FROM TABLE @lt_zmrpadb.
    COMMIT WORK.

  ENDMETHOD.
ENDCLASS.
