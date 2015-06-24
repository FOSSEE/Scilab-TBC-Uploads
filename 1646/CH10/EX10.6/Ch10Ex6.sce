// Scilab Code Ex10.6: Page-512 (2011)
clc;clear;
V = 60;....// Electric potential of smaller drop, volt
r = 1;....// For simplcity assume radius of each small drop to be unity, unit
q = 1;....// For simplicity assume charge on smaller drop to be unity, C
k = 1;....// For simplicity assume Coulomb's constant to be unity, unit
R = 2^(1/3)*r;.....// Radius of bigger drop, unit
Q = 2*q;....// Charge on bigger drop, C
V_prime = k*Q/R*V;....// Electric potential of bigger drop, volt
printf("\nThe electric potential of new drop = %4.1f V", V_prime);

// Result
// The electric potential of new drop = 95.2 V
