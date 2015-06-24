clc;funcprot(0);//Example 5.7
//Initilisation of Variables
x=0.5;....//distance  in m
L=1;...//Length of the flat plate in m
v=5;...//Velocity of air in m/s
R=0.287;...//Universal gas contant in kJ/kg K
T=48.5+273;.........//Temperature of air in K
//Properties of air at 345K
mu=17.36*10^-6;......//Viscocity in m^2/s
Pr=0.708;........//Prandtl no
K=0.02749;........//Thermal conductivity in W/mK
Cp=1.006;...........//Specific heat in kJ/kgK
p=101.325;.....//Air pressure in bar 
//calculations
Re=(v*x)/mu;........//Reynolds no
Nu=0.332*Re^0.5*Pr^(1/3);.........//Nusselt number
h=(Nu*K)/x;..........//Heeat transfer coefficient in W/m^2K
ha=2*h;..........//Average Heeat transfer coefficient in W/m^2K
rho=p/(R*T);...//Density of air at 300 K
st=(ha*10^-3)/(rho*v*Cp);...........//stanton number
Cf=st*Pr^(2/3);.........//Average friction coefficient
SS=Cf*rho*v^2/2;.......//Average shear stress 
Fd=SS*x*L;......//Total Drag Force in N
disp(Fd,"Total Drag Force in N:")
//The Value of stanton number arraived in textbook is found to be wrong when calculated So the Drag force value has been changed

