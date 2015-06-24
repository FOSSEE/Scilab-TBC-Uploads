clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 9.2
//Caption : Program to Find Power Requirement For Various seasons

//Given Values
Qh_Winter=30;//[KW]
Qc_Summer=60;//[KW]
Tc_Winter=283.15;//[K]
Th_Winter=303.15;//[K]
Tc_Summer=278.15;//[K]
Th_Summer=298.15;//[K]

//For WINTER's
//Using Eqn(5.7)
Qc_Winter=Qh_Winter*(Tc_Winter/Th_Winter);
//Using Eqn(9.1)
W_Winter=approx((Qh_Winter-Qc_Winter),2);//[KW]
disp('KW',W_Winter,'Power Requirement for WINTER''s')

//For SUMMER's
//Combining Eqn(9.2) And Eqn(9.3)
W_Summer=approx((Qc_Summer*((Th_Summer-Tc_Summer)/Tc_Summer)),2);
disp('KW',W_Summer,'Power Requirement for SUMMER''s')

//End