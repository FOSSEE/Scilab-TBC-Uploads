clear;
clc;
disp(' Example 14.1');

// aim : To determine 
// (a) the free air delivered
// (b) the volumetric efficiency
// (c) the air delivery temperature
// (d) the cycle power
// (e) the isothermal efficiency

// given values
d = 200*10^-3;// bore, [m]
L = 300*10^-3;// stroke, [m]
N = 500;// speed, [rev/min]
n = 1.3;// polytropic index
P1 = 97;// intake pressure, [kN/m^2]
T1 = 273+20;// intake temperature, [K]
P3 = 550;// compression pressure, [kN/m^2]

// solution
// (a)
P4 = P1;
P2 = P3;
Pf = 101.325;// free air pressure, [kN/m^2]
Tf = 273+15;// free air temperature, [K]
SV = %pi/4*d^2*L;// swept volume, [m^3]
V3 = .05*SV;// [m^3]
V1 = SV+V3;// [m^3]
V4 = V3*(P3/P4)^(1/n);// [m^3]
ESV = (V1-V4)*N;// effective swept volume/min, [m^3]
// using PV/T=constant
Vf = P1*ESV*Tf/(Pf*T1);// free air delivered, [m^3/min]
mprintf('\n (a) The free air delivered is  =  %f  m^3/min\n',Vf);

// (b)
VE = Vf/(N*(V1-V3));// volumetric efficiency
mprintf('\n (b) The volumetric efficiency is  =  %f  percent\n',VE*100);

// (c)
T2 = T1*(P2/P1)^((n-1)/n);//  free air temperature, [K]
mprintf('\n (c) The air delivery temperature is  =  %f  C\n',T2-273);

//  (d)
CP = n/(n-1)*P1*(V1-V4)*((P2/P1)^((n-1)/n)-1)*N/60;// cycle power, [kW]
 mprintf('\n (d) The cycle power is  =  %f  kW\n',CP);

// (e)
// neglecting clearence
W = n/(n-1)*P1*V1*((P2/P1)^((n-1)/n)-1)
Wi = P1*V1*log(P2/P1);// isothermal efficiency
IE = Wi/W;// isothermal efficiency
mprintf('\n (e) The isothermal efficiency neglecting clearence  is  =  %f percent\n',IE*100);

// End
