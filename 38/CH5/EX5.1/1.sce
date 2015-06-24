// Caption: Finding unsaturated value of the synchronous reactance and the SCR ratio
// Example 5.1

clear;
close;
clc;
E_af_ag=202/3^.5;//voltage to neutral on air-gap line at 2.20A
I_a_sc=118;//at 2.20A
X_s_ag=E_af_ag/I_a_sc;//Reactance per phase
disp(X_s_ag,'Reactance in ohm per phase=')
I_a_r=45000/(3^.5*220);//Rated Ia
I_a_sc=118/I_a_r;//per unit
E_af_ag=202/220;//per unit
X_s_ag=E_af_ag/I_a_sc;//per unit
disp(X_s_ag,'reactance per unit=')
X_s=220/3^.5*152;//per phase
disp(X_s,'saturated reactance per phase=')
I_a_sc_dash=152/118;//per unit
X_s=1.00/I_a_sc_dash;//per unit
SCR=2.84/2.20;
disp(SCR,'short circuit ratio=')
//Result
// Reactance in ohm per phase=0.9883454 
//reactance per unit=0.9189162 
//saturated reactance per phase=19306.593 
//short circuit ratio=1.2909091 