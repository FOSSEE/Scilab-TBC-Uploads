// Exa 6.33
format('v',7);clc;clear;close;
// Given data
R1= 20*10^3;//resistance in ohm
R2= 50*10^3;//resistance in ohm
C2= 0.003*10^-6;//capacitance in F
R4= 10*10^3;//resistance in ohm
C1= 150*10^-12;//capacitance in F
omega= 10^6;// in rad/sec
Z1= R1/(1+%i*omega*C1*R1);// in ohm
Z2= (1+%i*omega*C2*R2)/(%i*omega*C2);// in ohm
// At balance condition : Z1*R4 = Z2*(Rx+%i*omega*Lx) or
// R4= omega^2*R1*C2*(R1*R4*C1-Lx)      (i)
// R4= R1*(Rx*C2-R4*C1)/(R2*C2)             (ii)
Rx= R4*(R1*C1+R2*C2)/(R1*C2);// in Ω from eq(ii)
Lx= R4*(R2*C1-1/(omega^2*R1*C2));// in H from eq (i)
Rx= Rx*10^-3;// in k ohm
Lx= Lx*10^3;// in mH
disp(Rx,"The value of Rx in kΩ is : ")
disp(Lx,"The value of Lx in mH is : ")

// Note: The calculated value of Rx will be as in kΩ not in only Ω, so the answer in the book is wrong.
