clear;
clc;
disp(' Example 14.3');

// aim : To determine 
// (a) the intermediate pressures
// (b) the effective swept volume of the LP cylinder
// (c) the temperature and the volume of air delivered per stroke at 15 bar
// (d) the work done per kilogram of air

// given values
d = 450*10^-3;//  bore , [m]
L = 300*10^-3;//  stroke, [m]
cl = .05;//  clearence
P1 = 1; // intake pressure, [bar]
T1 = 273+18;// intake temperature, [K]
P4 = 15;// final delivery pressure, [bar]
n = 1.3;//  compression and expansion index
R = .29;// gas constant, [kJ/kg K]

// solution
// (a)
k=(P4/P1)^(1/3); 
// hence
P2 = k*P1;//  intermediare pressure, [bar]
P3 = k*P2;//  intermediate pressure, [bar]

mprintf('\n (a) The intermediate pressure is P2 =  %f  bar\n',P2);
mprintf('\n     The intermediate pressure is  P3=  %f  bar\n',P3);

// (b)
SV = %pi*d^2/4*L;//  swept volume of LP cylinder, [m^3]
// hence
V7 = cl*SV;// volume, [m^3]
V1 = SV+V7;// volume, [m^3]
// also
P7 = P2;
P8 = P1;
V8 = V7*(P7/P8)^(1/n);//  volume, [m^3]
ESV = V1-V8;// effective swept volume of LP cylinder, [m^3]

mprintf('\n (b) The effective swept volume of the LP cylinder is  =  %f litres\n',ESV*10^3);

// (c)
T9 = T1;
P9 = P3;
T4 = T9*(P4/P9)^((n-1)/n);// delivery temperature, [K]
// now using P4*(V4-V5)/T4=P1*(V1-V8)/T1
V4_minus_V5 = P1*T4*(V1-V8)/(P4*T1);// delivery volume, [m^3]
 
mprintf('\n (c) The delivery temperature is =  %f  C\n',T4-273);
mprintf('\n      The delivery volume is =  %f  litres\n',V4_minus_V5*10^3);

//  (d)

W = 3*n*R*T1*((P2/P1)^((n-1)/n)-1)/(n-1);//  work done/kg ,[kJ]
mprintf('\n (d) The work done per kilogram of air is =  %f  kJ\n',W);
 
// End
