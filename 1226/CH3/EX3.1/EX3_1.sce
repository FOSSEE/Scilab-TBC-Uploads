clc;funcprot(0);//EXAMPLE 3.1
// Initialisation of Variables
t1=673;.....................//Max temp in Kelvin
t3=313;;...................//Min temp in Kelvin
W=130;.................//Work produced in kJ
//calculations
etath=(t1-t3)/t1;................//Engine thermal efficiency
disp(etath*100,"Engine thermal efficiency in %:")
ha=W/etath;.................//Heat added in kJ
disp(ha,"Head added in kJ:")
dels=(ha-W)/t3;...........//Change in entropy
disp(dels,"Change in entropy in kJ/K")
