clc;funcprot(0);//Example 5.3
//Initilisation of Variables
L=0.9;......//Length of rectangular plate in m
w=1.5;...//Width of rectangular plate in m
Tw=20;....//Temparature of nitrogen in degrees celcius
Ta=60;....//Temparature maintained at plate in degrees celcius
U=3;....//Velocity of nitrogen in m/s
R=287;...//                 
d=1.142;....//Density of nitrogen in kg/m^3
v=15.63*10^-6;...//Velocity of nitrogen in m^2/s
K=0.0262*10^-3;...//Thermal conductivity of nitrogen in W/m*K
Cp=1.04;...//Specific heat capacity in kJ/kh K
Re=5*10^5;....//Reynolds number
//calculation
Tf=(Ta+Tw)/2;....//Filim temparature in degrees celcius
Xc=(Re*v)/U;....//DIstance where laminar flow is possible in m
Rel=(U*L)/v;....//reynolds number of laminar flow
Pr=(Cp*v*d)/K;.....//Prandtl number
Nua=0.664*Rel^(1/2)*Pr^(1/3);....//Average Nusselt number
ha=(Nua*K*10^3)/L;...//Heat transfer coefficient in W/m^2 K
Q=ha*L*w*(Ta-Tw);....//Heat transfer rate from plate in W
disp(Q,"Heat transfer rate from plate in W:")
