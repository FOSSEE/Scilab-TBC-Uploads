clear;
clc;

printf('Example 9.30');

Tci = 320        //[K] Cold Fluid Initial Temperature
Tce = 340        //[K] Cold Fluid Final Temperature
mc = 4            //[kg/s] Flow rate of cold fluid
mh = 8            //[kg/s] Flow rate of hot fluid
Thi = [380 370 360 350]    //[K] Hot fluid initial temperature
Cp = 4.18            //[kJ/kg.K] mean heat capacity
U = 1.5        //[W/m^2.K] Overall heat transfer coefficient

GCpu= mh*Cp;            //[kW/K]
GCpp= mc*Cp;            //[kW/K]
if(GCpu<GCpp)
    GCpmin = GCpu;       //[kW/K]
    ratio = GCpmin/GCpp;
else
    GCpmin = GCpp;      //[kW/K]
    ratio = GCpmin/GCpu;
    
//Equation 9.235
n = mc*Cp*(Tce-Tci)*(mc*Cp*(Thi - Tci))^-1;
//From Figure 9.85b Number of transfer Units
N = [.45 .6 .9 1.7];    //[NTU]
A = N*GCpmin/U;        //Area of required [m^2]

format('v',4)
printf('\n\n   Thi(K)   n      N     A (m^2)');
disp([Thi(4) n(4) N(4) A(4)],[Thi(3) n(3) N(3) A(3)],[Thi(2) n(2) N(2) A(2)],[Thi(1) n(1) N(1) A(1)])
//END