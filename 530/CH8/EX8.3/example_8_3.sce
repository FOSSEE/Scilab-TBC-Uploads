clear;
clc;

// A TeTwtbook on HEAT TRANSFER by S P SUKHATME
// Chapter 8
// Condensation and Boiling


// ETwample 8.3
// Page 322
printf("Example 8.3, Page 322 \n \n");

m = 25/60 ; // [kg/sec]
ID = 0.025 ; // [m]
OD = 0.029 ; // [m]
Tci = 30 ; // [C]
Tce = 70 ; // [C]
g = 9.8 ; // [m/s^2]

Ts = 100 ; // [C]
// Assuming 5.3.2 is valid, properties at 50 C 
// Properties at Tm
rho = 988.1 ; // [kg/m^3]
k = 0.648 ; // [W/m K]
v = 0.556*10^-6 // [m^2/s];
Pr = 3.54 ;
Re = 4*m/(%pi*ID*rho*v);
// From eqn 4.6.4a
f = 0.005635;
// From eqn 5.3.2
Nu = 198.39 ;
h = Nu*k/ID ;

// Assuming average wall temperature = 90 C
Tw = 90 ; // [C]
Tm = (Tw+Ts)/2;
// Properties at Tm
// Properties at Tm
rho = 961.9 ; // [kg/m^3]
k = 0.682 ; // [W/m K]
u = 298.6*10^-6 ; // [kg/m s]
lambda = 2257*10^3 ; // [J/kg]

h = 0.725*[lambda*(rho^2)*g*(k^3)/((Ts-Tw)*u*OD)]^(1/4);
// Equating the heat flow from the condensing steam to the tube wall, to the heat flow from the tube wall to the flowing water.
// Solving the simplified equation
function[f] =temp(Tw)
    f=(100-Tw)^(3/4)-8.3096/[log((Tw-Tci)/(Tw-Tce))];
    funcprot(0);
endfunction

T=fsolve(Tw,temp);
printf("Temperature obtained from trial and error = %f C \n",T);

// Therefore
hc = 21338.77/(100-T)^(1/4); // [W/m^2 K]
printf("h_c = %f W/m^2 K \n",hc);

// Now, equating the heat flowing from the condensing steam to the tube wall to the heat gained by the water, we have
function[g] =lngth(l)
    g=hc*(%pi*OD*l)*(100-T)-m*4174*(Tce-Tci);
    funcprot(0);
endfunction

l = 0; // (initial guess, assumed value for fsolve function)
L = fsolve(l,lngth);
printf("\nLength of the tube = %f m \n",L);

