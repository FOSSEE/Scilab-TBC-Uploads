//clear//
clear;
clc;

//Example 24.3
//Given
Tw = 80; //[F]
Tdb = 120; //[F]
v = 3.5; //[ft/s]
rho = 120; //[lb/ft^3]
Xe = 0;
Xc = 0.09;
lambda = 1049; //[Btu/lb]
M = 29;
B = 24; //[in.]
D = 2; //[in.]
Dc = 2; //[ft]
X2 = 0.20;
X1 = 0.10;
Dcyl = 1/4; //[in.]
L = 4; //[in.]
Vbar = 3.5; //[ft/s]
Thb = 120;
 
//Solution
//Since the Xc is less than 10 percent, all drying takes place
//in the constant-rate period and the vaporrization temperature,
//as before, is 80 F. 
//From Exapmle 24.1, mass of water to be evaporated
mdot = 8*(X2-X1); //[lb]
//The quantity of heat to be transferred 
QT = mdot*lambda; //[Btu]
//mass of the dry soild in one cylinder is
mp = %pi/4*(Dcyl/12)^2*(L/12)*rho; //[lb]
//surface area of one cylinder is
Ap = %pi*(Dcyl/12)*(L/12); //[ft^2]
//Total area exposed by 8 lb solids
A = 8/mp*Ap; //[ft^2]
//The heat transfer coefficient is found from the 
//equivalent form of Eq.(21.62)
//hDbyk = 1.17*Nre^0.585*Npr^(1/3)
//For air at 1 atm and 120F, the properties are
rho_a = M/359*492/580; //[lb/ft^3]
mu_a = 0.019; //[cP], from Appendix 8
k_a = 0.0162; //[Btu/ft-h-F], from Appendix 12
Cp_a = 0.25; //[Btu/lb-F], from Appendix 15
Nre = 1/48*Vbar*rho_a/(mu_a*6.72*10^-4);
Npr = mu_a*2.42*Cp_a/k_a;
//Form Eq.(21.62)
h = (k_a*1.17*Nre^0.585*Npr^(1/3))/(1/48); //[Btu/ft^2-h-F]
mdot_g = v*3600*rho_a; //[lb]
//From Fig. 23.2
cs = 0.25;
delta_Thb = Thb-Tw; //[F]
delta_Tha = 8.24; //[F]
//The heat transferred form the gas to a thin section of the bed
delta_TL = (delta_Thb-delta_Tha)/log(delta_Thb/delta_Tha); //[F]
//rate of heat transfer
qT = h*A*delta_TL; //[Btu/h]
//drying time
tT = QT/qT; //[h]
disp('h',tT,'Required drying time is')
