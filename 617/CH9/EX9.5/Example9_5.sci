clc();
clear;

// To calculate LMTD for heat exchanger

Tc1 = 120;                                  // Inlet cold fluid temperature in degF
Tc2 = 310;                                  // Outlet cold fluid temperature in degF
Th1 = 500;                                  // Inlet hot fluid temperature in degF
Th2 = 400;                                  // Outlet hot fluid temperature in degF
delt1 = Th2-Tc1;                            // Maximum temperature difference in degF
delt2 = Th1-Tc2;                            // Minimum temperature difference in degF
LMTD = (delt1-delt2)/log(delt1/delt2);      // Log mean temperature difference 
printf("The log mean temperature difference is %d degF",LMTD)     
