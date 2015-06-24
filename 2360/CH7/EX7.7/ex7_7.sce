// Exa 7.7
format('v',6);clc;clear;close;
// Given data
Cin = 35;// in pF
// (R1+Rin)/Rin = 10;
RinBYR1= 1/9;
//while balance equation with compensating capacitor
//  R1*C1 = Rin*(C2+Cin);
C1= Cin*RinBYR1;//compansating capacitor  in pF
disp(C1,"The compansating capacitor in pF is");
