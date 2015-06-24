// Exa 9.19
clc;
clear;
close;
format('v',7)
// Given data
Rating = 100*10^3;// in VA
V1 = 11000;// in V
V2 = 220;// in V
Wo = 2*10^3;// in W
Vo = 220;// in V
Io = 45;// in A
phi_o = acosd(Wo/(Vo*Io));
I_c = Io*cosd(phi_o);// in A
I_m = Io*sind(phi_o);// in A
Ro= V2/I_c;// in ohm
Xo= V2/I_m;// in ohm
Wsc= 3*10^3;// in W
Vsc= 500;// in V
Isc= 9.09;// in A
R1e= Wsc/Isc^2;// in ohm
Z1e= Vsc/Isc;// in ohm
X1e= sqrt(Z1e^2-R1e^2);// in ohm
K= V2/V1;
R2e= K^2*R1e;// in ohm
X2e= K^2*X1e;// in ohm
Z2e= K^2*Z1e;// in ohm
disp("The value of R''o is : "+string(Ro)+" Ω")
disp("The value of X''o is : "+string(Xo)+" Ω")
disp("The value of R1e is : "+string(R1e)+" Ω")
disp("The value of Z1e is : "+string(Z1e)+" Ω")
disp("The value of X1e is : "+string(X1e)+" Ω")
disp("The value of R2e is : "+string(R2e)+" Ω")
disp("The value of X2e is : "+string(X2e)+" Ω")
disp("The value of Z2e is : "+string(Z2e)+" Ω")
