clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 10.3   Page 648 \n'); //Example 10.3
// Heat Transfer and Condensation Rates

//Operating Conditions
Ts = 50+273    ;//[K] Surface Temperature
Tsat = 100+273    ;//[K] Saturated Temperature
D = .08            ;//[m] Diameter of pan
g = 9.81          ;//[m^2/s] gravitaional constant
L = 1                //[m] Length
//Table A.6 Saturated Vapor Properties p = 1.0133 bars
rhov = .596            ;//[kg/m^3] Density
hfg = 2257*10^3        ;//[J/kg] Specific Heat
//Table A.6 Saturated water Liquid Properties T = 348 K
rhol = 975            ;//[kg/m^3] Density
cpl = 4193             ; //[J/kg.K] Specific Heat
kl = 0.668                ;//[W/m.K] Conductivity
ul = 375*10^-6            ;//[N.s/m^2] Viscosity
uvl = ul/rhol;            ;//[N.s.m/Kg] Kinematic viscosity
Ja = cpl*(Tsat-Ts)/hfg;
hfg2 = hfg*(1+.68*Ja);
//Equation 10.43
Re = [3.70*kl*L*(Tsat-Ts)/(ul*hfg2*(uvl^2/g)^.33334)+4.8]^.82;

//From equation 10.41
hL = Re*ul*hfg2/(4*L*(Tsat-Ts));
q = hL*(%pi*D*L)*(Tsat-Ts);

m = q/hfg;
//Using Equation 10.26
del = [4*kl*ul*(Tsat-Ts)*L/(g*rhol*(rhol-rhov)*hfg2)]^.25;


printf("\n Heat Transfer Rate = %.1f kW and Condensation Rates= %.4f kg/s \n And as del(L) %.3f mm << (D/2) %.2f m use of vertical cylinder correlation is justified",q/1000,m,del*1000,D/2);
//END