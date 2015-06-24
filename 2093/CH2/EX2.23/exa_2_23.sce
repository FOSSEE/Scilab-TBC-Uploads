// Exa 2.23
clc;
clear; 
close;
// Given data 
I_D= 1;// in mA
I_D= I_D*10^-3;// in A
gm= 1;//in mA/V
gm= gm*10^-3;//in A/V
f_L= 10;// in Hz
R_S= 6;// in kΩ
R_S= R_S*10^3;// in Ω
R_D= 10;// in kΩ
R_D= R_D*10^3;// in Ω
vo_by_vi= -gm*R_D/(1+gm*R_S);// in V/V
disp(vo_by_vi,"Mid band gain in V/V is : ");
// Formula f_L= 1/(2*%pi*(1/gm || R_S)) * CS
CS= 1/(2*%pi*(1/gm*R_S/(1/gm+R_S))*f_L) ;//in F
disp(CS*10^6,"The value of Cs in µF is : ")
