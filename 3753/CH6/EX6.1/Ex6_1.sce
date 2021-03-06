//Example number 6.1, Page number 6.46

clc;clear;close


// Variable declaration
El=10**-2*50;      // energy loss(J)
H=El*60;           // heat produced(J)
d=7.7*10**3;       // iron rod(kg/m**3)
s=0.462*10**-3;    // specific heat(J/kg K)

// Calculation
theta=H/(d*s);     // temperature rise(K)

// Result
printf("temperature rise is %.2f K",(theta))
