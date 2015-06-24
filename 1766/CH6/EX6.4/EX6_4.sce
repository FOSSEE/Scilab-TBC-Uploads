clc;funcprot(0);//Example 6.4
//Initilisation of Variables
m=0.1;....//flow rate of saturated water in kg/s 
di=0.025;...//inner diameter of pipe in m
Tw=120;......//Uniform temparature of wall tube in degrees celcius
x=0.25;....//Vapour mass quality in m
Ts=100;...//Temparature in degrees celcius
Kl=0.675;...//Thermal conductivity of saturatd water and stream in W/m*K
Ml=2.82*10^-4;....//saturated water velocity in kg/m s
Mv=0.1233*10^-4;......//viscosity of saturated water in kg/(m-s)
Cpl=4200;...//specific heat of saturated water J/kg K 
Prl=1.74;....//Prandtl number of saturated water 
hfg=2257*10^3;....//latent heat of vapouraisation in J/kg
Pl=960.6;.....//density of saturated water in kg/m^3
Pv=0.6;....//density of saturated vapour in kg/m^3
row=0.06;....//surface tension for liquid vapour interferance in N/m
//calculation
Xt=((1-x)/x)^0.9*(Pv/Pl)^0.5*(Ml/Mv)^0.1;.....//
F=10.6;...//Correction factor 
Rel=(4*m*(1-x))/(%pi*di*Ml);....//Reynolds value
DeltP=0.972*10^5;....//Diffrence between saturation pressure s in liquid at Tw and Ts in N/m^2
S=0.17;...//Supresson fractor 
hc=(0.023*(Kl/di)*(Rel)^0.8*(Prl)^0.4*F);.....//Convection heat traansfer cofficient in W/m^2*K
hnb=0.00122*[(((Kl)^0.79)*((Cpl)^0.45)*((Pl)^0.49))/(((row)^0.5)*((Ml)^0.29)*((hfg)^0.24)*((Pv)^0.24))]*(Tw-Ts)^0.29*(DeltP)^0.75*S;.....//Nucleate boiling heat transfer coefficient in W/m*2 K
Ret=F^1.25*Rel;...//reynolds number 
h=hc+hnb;...........//Two phase heat transfer cofficient W/m*2 K
disp(h,"Two phase heat transfer cofficient W/m*2 K")
