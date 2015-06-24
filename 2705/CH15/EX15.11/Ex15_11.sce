clear;
clc;
disp('Example 15.11');

// aim : To determine
// (a) the thermal efficiency of the cycle
// (b) the indicared power of the cycle

// given values
// taking basis one second
rv = 11;// volume ratio
P1 = 96;// initial pressure , [kN/m^2]
T1 = 273+18;// initial temperature, [K]
Gama = 1.4;// heat capacity ratio

// solution
// taking reference  Fig. 15.24
// (a)
Beta = 2;// ratio of V3 and V2
TE = 1-(Beta^(Gama)-1)/((rv^(Gama-1))*Gama*(Beta-1));// thermal efficiency
mprintf('\n (a) the thermal efficiency of the cycle is  =  %f percent\n ',TE*100);

// (b) 
// let V1-V2=.05, so
V2 = .05*.1;// [m^3]
// from this
V1 = rv*V2;// [m^3]
V3 = Beta*V2;// [m^3]
V4 = V1;// [m^3]
P2 = P1*(V1/V2)^(Gama);// [kN/m^2]
P3 = P2;// [kn/m^2]
P4=P3*(V3/V4)^(Gama);// [kN/m^2]
// indicated power
W = P2*(V3-V2)+((P3*V3-P4*V4)-(P2*V2-P1*V1))/(Gama-1);// indicated power, [kW]
mprintf('\n (c) The indicated power of the cycle is  =  %f kW\n',W);

//  End
