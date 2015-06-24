
//Example 2.18//series equivalent of unknown impedence
clc;
clear;
w=3000;//in rad/s
R1=1.8;//in killo ohms
C1=0.9;//capacitance in micro farads
R2=9;//in killo ohms
R3=0.9;// in kilo ohms
Rx= ((w^2*(C1*10^-6)^2*R1*10^3*R2*10^3*R3*10^3)/(1+w^2*(R1*10^3)^2*(C1*10^-6)^2));//
Lx=((R2*10^3*R3*10^3*C1*10^-6)/(1+w^2*(R1*10^3)^2*(C1*10^-6)^2));//in henry
disp(Rx*10^-3,"unknown resistance in killo ohms")
disp(Lx,"inductance in henry")
//answer is wrong in the textbook
