*&---------------------------------------------------------------------*
*& Report ZDS_ABAPGIT_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zds_abapgit_demo.

PARAMETERS:
            R_add RADIOBUTTON GROUP cal,
            R_sub RADIOBUTTON GROUP cal,
            P_no1 TYPE i DEFAULT 30,
            P_no2 TYPE i DEFAULT 20.

DATA gv_result TYPE i.

IF NOT R_add IS INITIAL.
gv_result = p_no1 + p_no2.

ELSEIF NOT R_sub IS INITIAL.
  gv_result = p_no1 - p_no2.
ENDIF.

WRITE: 'Result is', gv_result.
.
            .
