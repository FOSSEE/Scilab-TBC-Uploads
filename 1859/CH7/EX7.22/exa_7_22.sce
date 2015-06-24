// Exa 7.22
clc;
clear;
close;
// Given data
R2= 834;// in Ω
R3= 100;// in Ω
C2= 0.124;// in µF
C2= C2*10^-6;// in F
C4= 0.1;// in µF
C4= C4*10^-6;// in F
L1= R2*R3*C4;// in H
f= 2;// in kHz
f= f*10^3;// in kHz
disp(L1*10^3,"The value of L1 in mH is :  ")
R1= R3*C4/C2;// in Ω
disp(R1,"The value of R1 in Ω is : ")
Z= R1+%i*2*%pi*f*L1;// in Ω
disp(abs(Z),"The magnitude of effective impedence in Ω is : ")
disp(atand(imag(Z),real(Z)),"The angle of effective impedence in ° is : ")
