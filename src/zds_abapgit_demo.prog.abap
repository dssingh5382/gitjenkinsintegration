*&---------------------------------------------------------------------*
*& Report ZDS_ABAPGIT_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zds_abapgit_demo.

SELECTION-SCREEN: BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
SELECTION-SCREEN BEGIN OF LINE.

PARAMETERS R_add RADIOBUTTON GROUP cal.
SELECTION-SCREEN COMMENT 10(15) TEXT-p10 FOR FIELD R_add.

PARAMETERS R_sub RADIOBUTTON GROUP cal.
SELECTION-SCREEN COMMENT 30(15) TEXT-p11 FOR FIELD R_sub.

PARAMETERS R_mul RADIOBUTTON GROUP cal.
SELECTION-SCREEN COMMENT 50(15) TEXT-p12 FOR FIELD R_mul.

PARAMETERS R_div RADIOBUTTON GROUP cal.
SELECTION-SCREEN COMMENT 70(15) TEXT-p13 FOR FIELD R_div.
SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN: END OF BLOCK b1.

SELECTION-SCREEN: BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
PARAMETERS:
            P_no1 TYPE i DEFAULT 30,
            P_no2 TYPE i DEFAULT 20.
SELECTION-SCREEN: END OF BLOCK b2.

DATA gv_result TYPE i.

START-OF-SELECTION.
IF NOT R_add IS INITIAL.
gv_result = p_no1 + p_no2.

ELSEIF NOT R_sub IS INITIAL.
  gv_result = p_no1 - p_no2.

ELSEIF NOT R_mul IS INITIAL.
  gv_result = p_no1 * p_no2.

ELSEIF NOT R_div IS INITIAL.
  gv_result = p_no1 / p_no2.
ENDIF.

end-of-SELECTION.
WRITE: 'Calculation result is:', gv_result.
.
            .
