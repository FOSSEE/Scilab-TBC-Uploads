clc;
clear;
//Example 4.8
L=3 ;//[m]
A=L^2   //Area in [sq m]
sigma=5.67*10^-8;    //[W/sq m.K^4]
T1=373;  //[K]
T2=313;  //[K]
e1=0.736;
e2=e1;
F12=1/((1/e1)+(1/e2)-1)
Q=sigma*A*F12*(T1^4-T2^4)   //[W]
printf("\n Net radiant interchange is %d W",round(Q));
