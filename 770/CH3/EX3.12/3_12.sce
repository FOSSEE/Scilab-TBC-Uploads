clear;
clc;

//Example - 3.12
//Page number - 99
printf("Example - 3.12 and Page number - 99\n\n");

//Given
P_1 = 150*10^(3);//[Pa] - Initial pressure
V_1 = 0.001;//[m^(3)] - Initial volume
P_2 = 1000*10^(3);//[Pa] - Final pressure
V_2 = 0.003;//[m^(3)] - Final volume

// At x = 0, Vt(total volume) = 0.001 m^(3), therefore x = (V_t - V_1)/A;  where A is area of cross section and x is length
// Force exerted b sprig is given by, F = Ps*A = k*x = k*(V_t - V_1)/A
// Ps = (k/A^(2))*(V_t - V_1)
// Total pressure = Initial pressre + Pressre due to spring
// P = P_1 + (k/A^(2))*(V_t - V_1)
// Let (k/A^(2)) = t (say)
// At state 2, i.e at P2 and V_t = V_2.
deff('[y]=f(t)','y=P_2-P_1 - t*(V_2-V_1)');
t = fsolve(1000,f);
// Therefore,pressure is related to total volume as P = P_1-t*(V_t - V_1)

// (a)
//slope = (k/A^(2))
printf(" (a).The slope of the line on P-Vt diagram is %e N/m^(5)\n",t);

// (b)
// Work done by the gas is given by   w=integral(PdVt)
w = integrate('P_1+t*(V_t-V_1)','V_t',V_1,V_2);//[J]
w = w*10^(-3);//[kJ]
printf(" (b).The work done by gas is %f kJ\n",w);
