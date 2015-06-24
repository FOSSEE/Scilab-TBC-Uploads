clc;
// page no 131
// prob no 4_3_1
//Direct current of 1 mA flowing across semiconductor junctn
Idc=10^-3;
Bn=10^6;//Effective noise BW=1 MHz
q=1.6*10^-19;//Charge on electron in coulombs
//Determination of noise component current In in DC current of Idc=1 mA
In=(2*Idc*q*Bn)^(1/2);
disp('nA',In*(10^9)','The value of noise current In is ')