clear;
clc;
printf("\t\t\tExample Number 10.5\n\n\n");
// shell-and-tube heat exchanger
// Example 10.5 (page no.-533-534) 
// solution

// to solve this problem, we determine a correction factor from figure 10-8 to be used with the LMTD calculated on the basis of counterflow exchanger.
// the parameters according to the nomenclature of figure 10-8(page no.-532) are 
T1 = 35;// [degree celsius]
T2 = 75;// [degree celsius]
t1 = 110;// [degree celsius]
t2 = 75;// [degree celsius]
P = (t2-t1)/(T1-t1);
R = (T1-T2)/(t2-t1);
// so the correction factor is 
F = 0.81;// from figure 10-10(page no.-534)
// and the heat transfer is q = U*A*F*dT_m
// so that. from example 10-4 we have 
U = 320;// [W/square meter degree celsius] overall heat transfer coefficient
q = 189493.33;// [W]
dT_m = 37.44;// [degree celsius]
A = q/(U*F*dT_m);// [square meter]
printf("area required for this exchanger is %f square meter",A)

