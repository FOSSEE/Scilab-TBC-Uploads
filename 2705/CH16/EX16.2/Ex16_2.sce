clear;
clc;
disp('Example 16.2');

// aim : To determine
// (a) the pressure ratiowhich will give the maximum net work output
// (b) the maximum net specific work output
// (c) the thermal efficiency at maximum work output
// (d) the work ratio at maximum work output
// (e) the carnot efficiency within the cycle temperature limits

// Given values
// taking the refrence as Fig.16.35
T3 = 273+1080;// [K]
T1 = 273+10;// [K]
cp = 1.007;// [kJ/kg K]
Gamma = 1.41;//  heat capacity ratio

// (a)
r_pmax = (T3/T1)^((Gamma)/(Gamma-1));// maximum pressure ratio
// for maximum net work output
r_p = sqrt(r_pmax);
mprintf('\n (a) The pressure ratio which give the maximum network output is  =  %f\n',r_p);

// (b)
T2 = T1*(r_p)^((Gamma-1)/Gamma);// [K]
// From equation [23]
T4 = T2;
W_max = cp*((T3-T4)-(T2-T1));// Maximum net specific work output, [kJ/kg]

mprintf('\n (b) The maximum net specific work output is  =  %f kJ/kg\n',W_max);

// (c)
W = cp*(T3-T2);
n_the = W_max/W;// thermal efficiency
mprintf('\n (c) The thermal efficiency at maximum work output is  = %f percent\n ',n_the*100);

// (d)
// From the equation [26]
W_ratio = n_the;// Work ratio
mprintf('\n (d) The work ratio at maximum work output is  =  %f\n',W_ratio);

// (e)
n_carnot = (T3-T1)/T3*100;// carnot efficiency
mprintf('\n (e) The carnot efficiency within the cycle temperature limits is  =  %f  percent\n',n_carnot);

// End
