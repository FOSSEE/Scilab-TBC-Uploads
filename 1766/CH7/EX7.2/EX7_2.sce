clc;funcprot(0);//Example 7.2
//Initilisation of Variables
Do=0.013;.....//Outer diameter of tube in m
Tw=75;....//Uniform temparature of tube in degrees celcius
Tv=85;......//Temparature of condence steam in degrees celcius
N=256;.....//Number of tubes
Na=16;....//number of arrangements in array
Kl=0.668;.....//Thermal conductivity of tube in W/m K
Ml=355*10^-6;....//saturated liquid velocity in kg/m s
hfg=2309*10^3;....//latent heat of vapouraisation in kJ/kg
g=9.81;......//accelaration due to gravity in m/s^2
Pl=974;.....//density of saturated liquid in kg/m^3
hii=0.725*[(g*Pl^2*hfg*Kl^3)/(Ml*(Tv-Tw)*Na*Do)]^(1/4);.....//Average heat transfer coefficient of horizantal tube in W/m^2 K
m=1;....//Length of tube in m
Q=hii*m*(N*%pi*Do)*(Tv-Tw);......//Heat flow rate of tubes in per meter length
ma=Q/hfg;.....//Mass of condensate per meter length in kg/s.m
disp(ma,"Mass of condensate per meter length in kg/s.m")
//////The Answer arraived in textbook is found to be wrong when calculated
