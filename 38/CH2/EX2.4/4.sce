// Caption: Finding regulation
clear;
close;
clc;
Z_eq=48/20.8;
R_eq=617/20.8^2;
X_eq=sqrt(Z_eq^2-R_eq^2);//in ohms
I_h=50000/2400;//full load high tension current
Loss=I_h^2*R_eq;
Input=40000+186+Loss;//in watts
Efficiency=1-803/Input;
disp(Efficiency,'efficiency is=');

V_1h=2400+(20.8*(0.8-0.6*%i)*(1.42+1.82*%i));
Reg=((2446-2400)/2400)*100;
disp(Reg,'percentage regultion=')