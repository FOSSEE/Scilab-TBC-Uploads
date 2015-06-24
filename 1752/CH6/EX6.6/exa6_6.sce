//Exa 6.6
clc;
clear;
close;
//given data
rho=1.205;// in kg/m^3;
C_p=1006;// in J/kg K
Pr=0.71;
K=0.0256;// in W/mK
delta=1.506*10^-5;// in m^2/s
T_s=35;// in degree C
T_infinite=5;// in degree C
T_f=(T_s+T_infinite)/2;// in degree C
T_f=T_f+273;// in K
Bita=1/T_f;
del_T=T_s-T_infinite;
g=9.81;
// Formula 1/x= 1/Lh + 1/Lv
Lh=50;// in cm
Lv=50;// in cm
x=Lh*Lv/(Lh+Lv);// in cm
x=x*10^-2;// in m

// Formula Gr=(g*Bita*del_T*x^3)/delta^2;
Gr=(g*Bita*del_T*x^3)/delta^2;
Ra=Gr*Pr;
// Formula Nu= h*x/K =0.53*Ra^(1/4)
h=0.53*Ra^(1/4)*K/x;// in W/m^2K
A=2*(0.5+0.5);
q=h*A*del_T;// w
disp("Heat loss per meter length of pipe is : "+string(q)+" watt")

// Note: In the book, value of h is wrong due to place miss value of x, so the answer in the book is wrong



