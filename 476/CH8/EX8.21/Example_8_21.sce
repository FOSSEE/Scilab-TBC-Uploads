//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 21


clear;
clc;


//Given:
P = 101.3; //total pressure in kPa
T = [333 343 353 363]; //temperatures(K)
Pa = [81.97 133.29 186.61 266.58]; //Partial pressure of component A (kPa)
Pb = [49.32 73.31 106.63 166.61]; //Partial pressure of component B (kPa)
Pc = [39.32 62.65 93.30 133.29]; //Partial pressure of component C (kPa)
xa = 0.45; //mole fraction of methanol
xb = 0.3; //mole fraction of ethanol
xc = 1-xa-xb; //mole fraction of propanol

//To calculate bubble and dew point and the composition 

//(a). To calculate bubble point and vapour composition
clf
plot2d(T,Pa);
plot2d(T,Pb,style=3);
plot2d(T,Pc,style=6);
xtitle(" ","Temperature","Vapour pressures");
legend("Pa","Pb","Pc");

//Using eq. 8.84 (Page no. 362)
//At bubble temperature, sum(yi) = sum((xi*Pi)/P) = 1
for i = 1:4
    sum_y(i) = (xa*Pa(i))/P + (xb*Pb(i))/P + (xc*Pc(i))/P;
end

Tb = interpln([sum_y';T],1); //obtaining temperature at which sum (yi) = 1

//Obtaining vapour pressures at bubble temperature
Pb1 = interpln([T;Pa],Tb);
Pb2 = interpln([T;Pb],Tb);
Pb3 = interpln([T;Pc],Tb);

//Calculating equilibrium vapour composition
ya = (xa*Pb1*100)/P;
yb = (xb*Pb2*100)/P;
yc = (xc*Pb3*100)/P;

mprintf('(a).');
mprintf('\n The bubble temperature is %f K',Tb);
mprintf('\n The equilibrium vapour contains %f methanol, %f ethanol and %f propanol',ya,yb,yc);

//(b). The dew point and liquid composition
//Vapour phase compositions at dew point
ya = 0.45; //methanol
yb = 0.30; //ethanol
yc = 0.25; //propanol

//At dew point, sum(xi) = sum ((yi*P)/Pi) = 1
for i = 1:4
    sum_x(i) = (ya*P)/Pa(i) + (yb*P)/Pb(i) + (yc*P)/Pc(i);
end

Td = interpln([sum_x';T],1); //obtaining temperature at which sum (xi) = 1

//Obtaining vapour pressures at dew temperature
Pd1 = interpln([T;Pa],Td);
Pd2 = interpln([T;Pb],Td);
Pd3 = interpln([T;Pc],Td);

//Calculating liquid composition
xa = (ya*P*100)/Pd1;
xb = (yb*P*100)/Pd2;
xc = (yc*P*100)/Pd3;

mprintf('\n\n (c).');
mprintf('\n The dew point is %f K',Td);
mprintf('\n At dew point liquid contains %f methanol, %f ethanol and %f propanol',xa,xb,xc);

//end