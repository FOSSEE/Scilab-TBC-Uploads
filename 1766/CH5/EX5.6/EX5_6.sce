clc;funcprot(0);//Example 5.6
//Initilisation of Variables
x=0.3;...//Length of the pipe in m
L=1;...//Length of the flat plate in m
v=5;...//Velocity of air in m/s
T=300;...//Temperature of air in K
Tw=345;.......//Temperature of entire length after heated in K
//Properties of air at 345K
mu=17.36*10^-6;......//Viscocity in m^2/s
Pr=0.708;........//Prandtl no
K=0.02749;........//Thermal conductivity in W/mK
Cp=1.006;...........//Specific heat in kJ/kgK
//calculation
Re=(v*x)/mu;........//Reynolds no
Nu=0.332*(Re)^0.5*Pr^(1/3);........//Nusselt number
h=(Nu*K)/x;..........//Heeat transfer coefficient in W/m^2K
ha=2*h;..........//Average Heeat transfer coefficient in W/m^2K
Q=ha*x*L*(Tw-T);.........//Heat transfered in 0.3 m in W
disp(Q,"Heat transfered in 0.3 m in W:")
