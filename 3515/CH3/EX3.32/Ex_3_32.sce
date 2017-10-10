// Exa 3.32
format('v',4);
clc;
clear;
close;
// Given data
bita= 200;
alpha= bita/(1+bita);
R_C= 100;// in Ω
R_B= 10;// in kΩ
Rsig= 1;// in kΩ
Rsig= Rsig*10^3;// in Ω
R_B= R_B*10^3;// in Ω
V_T= 25*10^-3;
V=1.5;// in V
I_E= 10;// in mA
I_E= I_E*10^-3;// in A
I_C= alpha*I_E;// in A
V_C= I_C*R_C;// in V
I_B= I_C/bita;// in A
V_B= V-(R_B*I_B)
gm= I_C/V_T;// in A/V
rpi= bita/gm;// in Ω
Rib= rpi;// in Ω
disp(Rib,"The value of Rib in Ω is : ")
Rin= R_B*rpi/(R_B+rpi);// in Ω
disp(Rin,"The value of Rin in Ω is : ")
// vbe= v_sig*Rin/(Rsig+Rin);
vbe_by_vsig= Rin/(Rsig+Rin);
// vo= -gm*vbe*R_C and = -gm*v_sig*Rin/(Rsig+Rin)
vo_by_vsig= -gm*R_C*vbe_by_vsig;// in V/V
disp(vo_by_vsig,"Overall voltage gain in V/V is : ")
// if 
vo= 0.4;//(±) in V
vs= vo/abs(vo_by_vsig);// in V
vbe= vbe_by_vsig*vs;// in V
disp(vs*10^3,"The value of v_sig in mV is : ")
disp(vbe*10^3,"The value of v_be in mV is : ")

// Note: There is some difference between in this coding and book solution. But Coding is correct.




