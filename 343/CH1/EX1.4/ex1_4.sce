R15=80;                   //Assigning values to the parameters
alpha0=0.004;
t1=15;
t2=50;
R0=R15/(1+alpha0*t1);     // Calculating resistance at 0 deg C
R50=R0*(1+alpha0*t2);     // Calculating resistance at 50 deg C
disp(R0,"Resistance value at 0 deg C");
disp(R50,"Resistance value at 50 deg C");