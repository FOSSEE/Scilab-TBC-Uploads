clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.3   Page 109 \n'); //Example 3.3
// Find Thermal conductivity of Carbon Nanotube

D = 14 * 10^-9;    // [m]Dia of Nanotube
s = 5*10^-6;       // [m]Distance between the islands
Ts = 308.4;        //[K] Temp of sensing island
Tsurr = 300;       //[K] Temp of surrounding
q = 11.3*10^-6;    //[W] Total Rate of Heat flow

//Dimension of platinum line
wpt = 10^-6;       //[m]
tpt = 0.2*10^-6;   //[m] 
Lpt = 250*10^-6;   //[m] 
//Dimension of Silicon nitride line
wsn = 3*10^-6;       //[m]
tsn = 0.5*10^-6;   //[m] 
Lsn = 250*10^-6;   //[m] 
//From Table A.1 Platinum Temp Assumed = 325K
kpt = 71.6;    //[W/m.K]
//From Table A.2, Silicon Nitride Temp Assumed = 325K
ksn = 15.5;    //[W/m.K]

Apt = wpt*tpt;        //Cross sectional area of platinum support beam
Asn = wsn*tsn-Apt;    //Cross sectional area of Silicon Nitride support beam
Acn = %pi*D^2/4;       //Cross sectional Area of Carbon nanotube

Rtsupp = [kpt*Apt/Lpt + ksn*Asn/Lsn]^-1;    //[K/W] Thermal Resistance of each support

qs = 2*(Ts-Tsurr)/Rtsupp;    //[W] Heat loss through sensing island support
qh = q - qs;    //[W] Heat loss through heating island support

Th = Tsurr + qh*Rtsupp/2;    //[K] Temp of Heating island

//For portion Through Carbon Nanotube
//qs = (Th-Ts)/(s/(kcn*Acn));

kcn = qs*s/(Acn*(Th-Ts));

printf("\n\n Thermal Conductivity of Carbon nanotube = %.2f W/m.K",kcn);
//END