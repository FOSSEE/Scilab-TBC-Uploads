// Exa 5.12
clc;
clear;
close;
// Given data
gm=75;// in A/V
Rs= 1;// in kohm
Rs= Rs*10^3;// in ohm
R_E= 1;// in kohm
R_E= R_E*10^3;// in ohm
rpi= 1;// in kohm
rpi= rpi*10^3;// in ohm
hie=rpi;

Io= -gm;
Vi= Rs+R_E+rpi;
Gm= Io/Vi;
disp(Gm,"Value of Gm is : ")
Bita=-R_E;
disp(Bita,"Value of Bita is : ")
D= 1+Bita*Gm;
disp(D,"Value of D is : ")
Gmf= Gm/D;
disp(Gmf,"Value of Gmf is : ")
Ri= Rs+R_E+hie;// in ohm
Rif= Ri*D;// in ohm
Rif=Rif*10^-3;// in kohm
disp(Rif,"Value of Rif in kohm is : ")
// Ro=infinite, so R_of = Ro*D = infinite
disp("Value of R_of is ")
disp("infinite")

