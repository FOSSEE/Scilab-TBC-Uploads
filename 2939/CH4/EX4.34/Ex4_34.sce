// Ex4_34
clc;

//Given:
Ax0 = 2000; //dps
//Solution:
//part a
ky = 0.693/10;
kx = 0.693/288;
// general equation connecting Ax and Ay is
 Ax12 = (ky * Ax0 * (0.5^(1/24) - 0.5^(1.2)))/ (ky - kx);

printf("\n Activity due to La(140) at the end of 12 hrs will be %f dps",Ax12);
//part b
ky = 0.693/10;
kx = 0.693/288;
// general equation connecting Ax and Ay is
 Ax24 = (ky * Ax0 * (0.5^(2) - 0.5^(57.6)))/ (ky - kx);

printf("\n Activity due to La(140) at the end of 24 d will be %f dps",Ax24);
