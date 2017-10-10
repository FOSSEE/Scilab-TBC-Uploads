clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.12   Page 163 \n'); //Example 3.12
// Heat loss from body & temp at inner surface

hair = 2;      //[W/m^2.K] Heat convection coefficient air
hwater = 200;      //[W/m^2.K] Heat convection coefficient water
hr = 5.9 ;     //[W/m^2.K] Heat radiation coefficient
Tsurr = 297;    //[K] Temperature of surrounding air
Tc = 37+273;    //[K] Temp inside
e = .95;
A = 1.8 ;       //[m^2] area
//Prop of blood
w = .0005 ;      //[s^-1] perfusion rate
pb = 1000;        //[kg/m^3] blood density
cb = 3600;        //[J/kg] specific heat
//Dimensions & properties of muscle & skin/fat
Lm = .03 ;       //[m]
Lsf = .003 ;     //[m]
km = .5 ;       //[W/m.K]
ksf = .3;        //[W/m.K]
q = 700;         //[W/m^3]  Metabolic heat generation rate

Rtotair = (Lsf/ksf + 1/(hair + hr))/A;
Rtotwater = (Lsf/ksf + 1/(hwater))/A;

m = (w*pb*cb/km)^.5;
Theta = -q/(w*pb*cb);

Tiair = (Tsurr*sinh(m*Lm) + km*A*m*Rtotair*[Theta + (Tc + q/(w*pb*cb))*cosh(m*Lm)])/(sinh(m*Lm)+km*A*m*Rtotair*cosh(m*Lm));
qair = (Tiair - Tsurr)/Rtotair;

Tiwater = (Tsurr*sinh(m*Lm) + km*A*m*Rtotwater*[Theta + (Tc + q/(w*pb*cb))*cosh(m*Lm)])/(sinh(m*Lm)+km*A*m*Rtotwater*cosh(m*Lm));
qwater = (Tiwater - Tsurr)/Rtotwater;

printf("\n\n For Air \n Temp excess Ti = %.1f degC and Heat loss rate =%.1f W \n\n For Water \n Temp excess Ti = %.1f degC and Heat loss rate =%.1f W ",Tiair-273,qair,Tiwater-273,qwater);
//END