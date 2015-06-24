clear;
clc;

// Illustration 3.5
// Page: 171

printf('Illustration 3.5 -  Page: 171\n\n');

// solution
//*****Data*****//
//  a-ammonia
T = 300; // [K]
P = 101.3; // [kPa]
ya_g = 0.6; // [ammonia concentration in bulk gas]
xa_l = 0.12; // [ammonia concentration in bulk liquid]
Fl = 3.5*10^-3; // [kmole/square m.s]
Fg = 2*10^-3; // [kmole/square m.s]
//*****//

// Algebraic solution (a)

// In gas phase substance 'A' is ammonia and 'B' is air
// Assuming N_BG = 0 and sia_AG = 1  and
// In liquid phase substance 'B' is water
// Assuming N_BL = 0 and sia_AL = 1
// Then equation 3.29 reduces to 3.30

// Using equation 3.30, 3.8(a),3.6(a) 
// ya_i = 1-(1-ya_g)*((1-xa_l)/(1-xa_i))^(Fl/Fg)    3.30
// ya_i = 10.51*gamma*xa_i                          3.8(a)
// gamma = 0.156+0.622*xa_i*(5.765*xa_i-1)          3.6(a)

deff('[y] = f12(xa_i)','y = 1-(1-ya_g)*((1-xa_l)/(1-xa_i))^(Fl/Fg) - 10.51*(0.156+0.622*xa_i*(5.765*xa_i-1))*xa_i');
xa_i = fsolve(0.2,f12);

ya_i = 1-(1-ya_g)*((1-xa_l)/(1-xa_i))^(Fl/Fg);
printf("The local gas and liquid interfacial concentrations are %f and %f respectively\n\n",ya_i,xa_i);
// Using equation 3.28 
N_a = Fg*log((1-ya_i)/(1-ya_g));
printf("The local ammonia mass-transfer flux is %e kmole/square m.s\n\n",N_a);
 