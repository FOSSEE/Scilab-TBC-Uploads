//clear//
clear;
clc;

//Example 12.4
//Given
P = 1; //[atm]
Vbar = 1.5; //[ft/s]
Ti = 68; //[F]
To = 188; //[F]
Tw = 220; //[F]
Tbar = (Ti+To)/2; //[F]
D = 2.067/12; //[ft], from Appendix 5
mu = 0.019; //[cP], at 128[F], from Appendix 8
rho = 29/359*(492/(68+460)); //[lb/ft^3], at 68[F]
G = Vbar*rho*3600; //[lb/ft^2-h]
Nre = D*G/(mu*2.42);
g = 32.14; 
//Hence the flow is laminar
//Applying Eq.(12.25)
Cp = 0.25; //[Bu/lb-F], at 128[F], Appendix 15
k = 0.0163; //[Btu/ft-h-F], at 128[F], Appendix 12
//By linear interpolation
mu_w = 0.021; //[cP], Appendix 5
//internal cross sectional area of pipe is
S = 0.02330; //[ft^2], Appendix 5
//mass flow rate
mdot = G*S; //[lb/h]
//the heat load
q = mdot*Cp*(To-Ti); //[Btu/h]
//The logrithmic mean temperature difference is
delta_T1 = Tw-To; //[F]
delta_T2 = Tw-Ti; //[F]
Log_T = (delta_T1-delta_T2)/log(delta_T1/delta_T2); //[F]

//heat transfer coefficient h = q/A*Log_T
//A = 0.541*L
//Also from Eq.(12.25), the heat transfer coefficient is
//h = 2*k/D*(mdot*Cp/k*L)^(1/3)*(mu/mu_w)^(1/4)
//Equating the two realtionships for h
L = (6.820/0.9813)^(3/2); // [ft]
//This result is corrected for the effect of natural convection 
//To use Eq.(12.80)
beeta = 1/(460+Tbar) ;//[R^-1], at 128[F]
delta_T = Tw-Tbar; //[F] 
rho = 0.0676; //[lb/ft^3]
//Grashof number 
Ngr = D^3*rho^2*g*beeta*delta_T/(mu*6.72*10^-4)^2;
//From Eq.(12.80)
phi_n = 2.25*(1+0.01*Ngr^(1/3))/log10(Nre);
//this is factor is used to correct the value of L
L = L/phi_n; //[ft]
disp('ft',L,'lenght of heated section is') 
