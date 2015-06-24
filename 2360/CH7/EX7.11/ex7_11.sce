// exa 7.11
format('v',5);clc;clear;close;
// Given data
Rin = 2;//resistance in Mohm
Cin = 50;//capacitance in pF
Cin = Cin * 10^-12;// in F
// (R1+Rin)/Rin = 10;
R1 = 9*Rin;//resistance in Mohm
disp(R1,"The value of R1 in MΩ is");
R1 = R1*10^6;// in ohm
Rin = Rin * 10^6;// in ohm
// While balance equation with compensating capacitor
// R1*C1 = Rin*(C2+Cin)
C1 = (Rin*Cin)/R1;// in F(neglecting C2)
C1 = C1 * 10^12;// in pF
disp(C1,"The value of C1 in pF is");
