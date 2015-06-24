clear
clc;

// Illustration 5.3
// Page: 295

printf('Illustration 5.3 -  Page: 295\n\n');

// solution
// For tower diameter, packed tower design program of Appendix D is run using // the data from Example 5.2 and packing parameters from Chapter 4.

// For a pressure drop of 300 Pa/m, the program converges to a tower diameter 
Db = 0.641; // [m]
// Results at the bottom of tower
fb= 0.733; // [flooding]
ahb = 73.52; // [m^-1]
Gmyb = 126; // [mol/square m.s]
kyb = 3.417; // [mol/square m.s]
klb = 9.74*10^-5; // [m/s]

// From equation 2.6 and 2.11
// Fg = ky*(1-y),   Fl = kx*(1-x)
// Assume 1-y = 1-y1    1-x = 1-x1
// let t = 1-y1  u = 1-x1
// Therefore
t = 0.926;
u = 0.676;
Fgb = kyb*t; // [mol/square m.s]
rowlb = 780; // [kg/cubic m]
Mlb = 159.12; // [gram/mole]
c = rowlb/Mlb; // [kmle/cubic m]
Flb = klb*c*u; // [mol/square m.s]
// From equ 5.19
Htgb = Gmyb/(Fgb*ahb); // [m]

// Now, we consider the conditions at the top of the absorber
// For a pressure drop of 228 Pa/m, the program converges to a tower        // diameter
Dt = 0.641; // [m]
// Results at the top of tower
ft = 0.668; // [flooding]
aht = 63.31; // [m^-1]
Gmyt = 118; // [mol/square m.s]
kyt = 3.204; // [mol/square m.s]
klt = 8.72*10^-5; // [m/s]

rowlt = 765; // [kg/cubic m]
Mlt = 192.7; // [gram/mole]
cl = rowlt/Mlt; // [kmole/cubic m]
Fgt = kyt*0.99; // [mole/square m.s]
Flt = klb*cl*0.953; // [mole/square m.s]
// From equ 5.19
Htgt = Gmyt/(Fgt*aht); // [m]
Htg_avg = (Htgb+Htgt)/2; // [m]
Fg_avg = (Fgt+Fgb)/2; // [mole/square m.s]
Fl_avg = (Flb+Flt)*1000/2; // [mole/square m.s]

// The operating curve equation for this system in terms of mole fractions
// y = 

// From Mathcad program figure 5.3
x1 = 0.324;
x2 = 0.0476;
n = 50;
dx = (x1-x2)/n;
me = 0.136;
T = zeros(50,2);
for j=1:50
    x(j) = x2+j*dx;
    y(j) = (0.004+0.154*x(j))/(1.004-0.846*x(j));
    
    deff('[y] = f12(yint)','y = (1-yint)/(1-y(j)) - ((1-x(j))/(1-yint/me))^(Fl_avg/Fg_avg)');
    yint(j) = fsolve(0.03,f12);
    f(j) = 1/(y(j)-yint(j));
    T(j,1) = y(j);
    T(j,2) = f(j);
end

scf(1);
plot(T(:,1),T(:,2));
xgrid();
xlabel("y");
ylabel("f = 1/(y-yint)");

yo = y(1);
yn = y(50);
// From graph between f vs y
Ntg = 10.612;
// Therefore
Z = Htg_avg*Ntg; // [m]
printf("The total packed height is %f m.\n\n",Z);
deltaPg = 300*Z; // [Pa]
Em = 0.60; // [mechanical efficiency]
Qg = 1.0;
Wg = (Qg*deltaPg)/Em; // [Power required to force the gas through the tower, W]
L2 = 1.214; // [kg/s]
g = 9.8; // [m/square s]
Wl = L2*g*Z/Em; // [Power required to pump the liquid to the top of the absorber, W]
printf("The power required to force the gas through the tower is %f W.\n\n",Wg);
printf("The power required to pump the liquid to the top of the absorber is %f W.\n\n",Wl);



