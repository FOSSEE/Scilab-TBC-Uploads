// Exa 5.14
clc;
clear;
close;
// given data 
fo=2;// in KHz
Vopp=5;//in volts
Vsat=13;//in Volts
// Let the value of R2 used be 10 Kohm 
R2=10;//in Kohm
R3=(2*R2*Vsat)/Vopp;//in Kohm 
// Let C1=0.1 uF
C1=0.1;// in uF
R1=R3/(4*fo*10^3*C1*10^-6*R2);// in ohm
disp(R1/1000,"Value of R1 in Kohm is ; ");
disp(C1,"Value of C1 in uF is ; ");
disp(R2,"Value of R2 in Kohm is ; ");
disp(R3,"Value of R3 in Kohm is ; ");