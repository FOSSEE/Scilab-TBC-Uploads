clear;
clc;
disp('Example 15.12');

// aim : To determine
// (a) the pressure and temperature at the end of compression
// (b) the pressure and temperature at the end of the constant volume process
// (c) the temperature at the end of constant pressure process

// given values
P1 = 103;// initial pressure, [kN/m^2]
T1 = 273+22;// initial temperature, [K]
rv = 16;// volume ratio of the compression
Q = 244;//heat added, [kJ/kg]
Gama = 1.4;// heat capacity ratio
cv = .717;// heat capacity, [kJ/kg k]

// solution
//  taking reference as Fig.15.26
// (a)
// for compression
// rv = V1/V2
P2 = P1*(rv)^Gama;// pressure at end of compression, [kN/m^2]
T2 = T1*(rv)^(Gama-1);// temperature at end of compression, [K]
mprintf('\n (a) The pressure at the end of compression is  =  %f  MN/m^2\n',P2*10^-3);
mprintf('\n      The temperature at the end of compression is  =  %f C\n',T2-273);

// (b)
// for constant volume process, 
// Q = cv*(T3-T2), so
T3 = T2+Q/cv;// temperature at the end of constant volume, [K]

// so for constant volume, P/T=constant, hence
P3 = P2*(T3/T2);// pressure at the end of constant volume process, [kN/m^2]
mprintf('\n (b) The pressure at the end of constant volume process is  =  %f  MN/m^2\n ',P3*10^-3);
mprintf('\n     The temperature at the end of constant volume process is  =  %f C\n',T3-273);

// (c)
S = rv-1;// stroke
// assuming 
V3 = 1;// [volume]
//so
V4 = V3+S*.03;// [volume]
// also for constant process V/T=constant, hence
T4 = T3*(V4/V3);// temperature at the end of constant presure process, [k] 
mprintf('\n (c) The temperature at the end of constant pressure process is  =  %f C\n',T4-273);

//  End
