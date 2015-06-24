//Exa:1.25
clc;
clear;
close;
I_l1=22;//in amperes
V=220;//in volts
R_sh=100;//in ohms
R_a=0.1;//in ohms
I_sh=V/R_sh;//in amperes
I_a1=I_l1-I_sh;//armatur current (in amperes)
E_b1=V-I_a1*R_a;//Back Emf (in volts)
N1=1000;//in rpm
I_a2=0.8*19.8;//in amperes
R=(218.416-(800*218.02/1000))/I_a2;
disp(R,'Value of additional resistance (in ohms)=');
I_a3=0.64*I_a1;//in amperes
R3=(218.7328-(800*218.02/1000))/I_a3;
disp(R3,'Value of additional resistance (in ohms)=');