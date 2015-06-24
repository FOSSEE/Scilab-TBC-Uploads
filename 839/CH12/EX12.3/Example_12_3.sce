//clear//
clear;
clc;

//Example 12.3
//Given
L = 15; //[ft]
k = 0.082; //[Btu/ft-h-F]
Cp = 0.48; //[Btu/lb-F]
T1 = 150; //[F]
T2 = 250; //[F]
Tw = 350; //[F]
//From Table 12.3
mu1 = 6; //[cP]
mu2 = 3.3; //[cP]
mu_w = 1.37; //[cP]
mu = (mu1+mu2)/2; //[cP]
//From Appendix 5
D = 0.364/12; //[ft]
//viscosity-correction factor phi is 
phi = (mu/mu_w)^0.14;
//Assuming Laminar flow and Graetz number large enough to apply Eq.(12.25)
//Using Eq.(12.25)
//h = k/D*2*phi*(Cp*mdot/(k*L))^(1/3);
//To use Eq.(12.18)
Log_T = ((Tw-T1)-(Tw-T2))/log((Tw-T1)/(Tw-T2)); //[F]
//From Eq.(12.18)
//h = Cp*100*mdot/(%pi*D*L*Log_T)
//From Eq.(12.25) and Eq.(12.18)
mdot = (4.69/0.233)^(3/2); //[lb/h]
//and
h = 0.233*mdot; //[Btu/ft^2-h-F]
disp('lb/h',mdot,'oil flow rate')

disp('Btu/ft^2-h-F',h,'Expected Coefficient')
Ngz = mdot*Cp/(k*L);
//This is large enough so that Eq.(12.25) applies,
//Reynolds Number
Nre = D*mdot/((%pi/4*D^2)*mu*2.42);
//Nre is in Laminar Range
