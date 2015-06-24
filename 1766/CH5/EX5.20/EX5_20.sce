clc;funcprot(0);//Example 5.20
//Initilisation of Variables
Tm=40;.....//Inlet Temperature of water in degrees celcius
Tw=60;......//Uniform wall temperature in degrees celcius
x=0.05;...//Side of square pipe in m
U=5;........//Velocity of air in m/s
//Properties of air at Tm
rho=1.128;......//Density in kg/m^3
mu=16.95*10^-6;......//Viscocity in m^2/s
Pr=0.669;........//Prandtl no
K=27.56*10^-3;........//Thermal conductivity in W/mK
Cp=1.005;.....//Specific heat capacity in kJ/kgK
//calculation
//(i) A Square pipe
Dh=x;..........//Effective diameter in m
Res=(U*Dh)/mu;..............//Reynolds no of square pipe
Nus=0.023*Res^0.8*Pr^0.4;...........//Nusselt number of square pipe
hs=(Nus*K)/Dh;.........//Heat transfer co efficient of square pipe in W/m^2K
disp(hs,"(i)Heat transfer co efficient for square pipe in W/m^2K:")
//(ii)Circular pipe 
Dc=((4*x^2)/%pi)^0.5;......//Diameter of pipe in m
Rec=(U*Dc)/mu;..............//Reynolds no of square pipe
Nuc=0.023*Rec^0.8*Pr^0.4;...........//Nusselt number of square pipe
hc=(Nuc*K)/Dc;.........//Heat transfer co efficient of square pipe in W/m^2K
disp(hc,"(ii)Heat transfer co efficient for circular pipe in W/m^2K:")
disp("The Heat transfer coefficient is approximatly same in both sides")
