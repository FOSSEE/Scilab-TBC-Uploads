clc;funcprot(0);//Example 7.1
//Initilisation of Variables
Do=0.03;.....//Outer diameter of tube in m
L=4;.....//Length of tube in m
Tw=35;....//Uniform temparature of tube in degrees celcius
Tv=65;......//Temparature of condence steam in degrees celcius
Kl=640*10^-3;.....//Thermal conductivity of tube in W/m K
Ml=562*10^-6;....//saturated liquid velocity in kg/m s
hfg=2383*10^3;....//latent heat of vapouraisation in J/kg
g=9.81;......//accelaration due to gravity in m/s^2
Pl=990;.....//density of saturated liquid in kg/m^3
hi=1.13*[(g*Pl^2*hfg*Kl^3)/(Ml*(Tv-Tw)*L)]^(1/4);.....//Average heat transfer coefficient of vertical tube in W/m^2 K
m=(%pi*Do*L*hi*(Tv-Tw))/hfg;......//Mass flow rate of vertical tube in kg/s
Re=(4*m)/(Ml*%pi*Do);......//reynolds number
hii=0.725*[(g*Pl^2*hfg*Kl^3)/(Ml*(Tv-Tw)*Do)]^(1/4);.....//Average heat transfer coefficient of horizantal tube in W/m^2 K
mii=(%pi*Do*L*hii*(Tv-Tw))/hfg;......//Mass flow rate of horizantal tube in kg/s
T=mii/m;...//the condesate flow rate with horizantal tube is 2.18 times higher than vertical tube
disp((Re),"(i)It is laminar flow  because reynolds value is below 1800")
disp(T,"(ii)the condesate flow rate with horizantal tube is this many times higher than vertical tube")
