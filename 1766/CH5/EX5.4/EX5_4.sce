clc;funcprot(0);//Example 5.4
//Initilisation of Variables
L=2;......//Length of flat plate in m
w=2;...//Width of flat plate in m
Tw=293;....//Temparature of water in K
Ta=353;....//Temparature maintained at plate in K
U=3;....//Velocity of water in m/s
//properties of water at 50 degrees celcius//
d=988.1;....//Density of water in kg/m^3
v=0.556*10^-6;...//Velocity of water in m^2/s
K=0.648;...//Thermal conductivity of water in W/m*K
Pr=3.54;....//prandtl number
Re=5*10^5;....//Reynolds number
Rel=10.791*10^6;....//Reynolds number
Xl=0.139;....//DIstance where turbulent flow is possible in m
//calculations
Tf=(Ta+Tw)/2;....//Filim temparature in degrees celcius
Xc=(Re*v)/U;....//Length of the plate upto which the flow is laminar in m
Xct=L-Xc;......//Length of turbulent region
Nua=0.664*Re^(1/2)*Pr^(1/3);....//Average Nusselt number
ha=(Nua*K)/(Xc);...//Heat transfer coefficient of laminar flow in W/m^2 K
Qlam=ha*Xc*L*(Ta-Tw);....//Heat transfer rate from plate in W
Nu=0.036*[(Rel^0.8)-(Re^0.8)]*Pr^(1/3);...//Nusselt number
hat=(Nu*K)/(L-Xl);...//Heat transfer coefficient of turbulent flow in W/m^2 K
Qtur=hat*Xct*L*(Ta-Tw);....//Heat transfer rate from plate in W
Qtot=Qtur+Qlam;.....//Heat transfer from the entire plate in W
disp(Xc,"Length of the plate upto which the flow is laminar in m:")
disp(Qtot,"Heat transfer from the entire plate in W:")
//Variation in answer is result of higher accuracy of scilab
