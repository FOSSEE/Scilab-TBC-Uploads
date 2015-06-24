clear;
clc;

// Illustration 3.4
// Page: 169

printf('Illustration 3.4 -  Page: 169\n\n');

// solution
//*****Data*****//
//  a-ammonia
T  = 300; // [K]
P = 101.3; // [kPa]
Kg = 2.75*10^-6; // [kmole/square m.s.kPa]
m = 1.64;
res = 0.85; // [gas phase resistance]
xa_g = 0.115/100; // [mole fraction of NH3 in liquid phase at a point]]
ya_g = 8/100; // [mole fraction of NH3 in gas phase at a point]
//*****//

Ky = Kg*P; // [kmole/square m.s]
// Using equation 3.24
ky = Ky/res; // [kmole/square m.s]
// Using equation 3.21
deff('[y] = f12(kx)','y = (m/kx)-(1/Ky)+(1/ky)');
kx = fsolve(0.0029,f12); // [kmole/square m.s]

// Interfacial concentrations at this particular point in the column, using equation (3.15)
ystar_a = m*xa_g;
// Using equation 3.12
N_a = Ky*(ya_g-ystar_a); // [kmole/square m.s]
// Gas-phase interfacial concentration from equation (3.9)
ya_i = ya_g-(N_a/ky);
// Since the interfacial concentrations lie on the equilibrium line, therefore
xa_i = ya_i/m;
// Cross checking the value of N_a
N_a = kx*(xa_i-xa_g); // [kmole/square m.s]

printf("The individual liquid film coefficient and gas film coefficient are %e kmole/square m.s %e kmole/square m.s respectively\n\n",kx,ky);
printf("The gas phase and liquid phase interfacial concentrations are %f and %f respectively\n\n",ya_i,xa_i);