// Exa 1.22
clc;
clear;
close;
// Given data
vo= -10;// in V
i_f= 1;// in mA
i_f= i_f*10^-3;//in A
// Formula vo= -i_f*Rf
Rf= -vo/i_f;// in Ω
// The output voltage, vo= -(v1+5*v2)       (i)
// vo= -Rf/R1*v1 - Rf/R2*v2;                    (ii)
// Comparing equations (i) and (2)
R1= Rf/1;// in Ω
R2= Rf/5;// in Ω
disp(Rf*10^-3,"The value of Rf in kΩ is : ")
disp(R1*10^-3,"The value of R1 in kΩ is : ")
disp(R2*10^-3,"The value of R2 in kΩ is : ")
