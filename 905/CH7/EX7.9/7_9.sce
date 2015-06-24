clear;
clc;

// Illustration 7.9
// Page: 460

printf('Illustration 7.9 -  Page: 460\n\n');

// solution
//*****Data*****//
// From example 7.8
Di = 0.288; // [m]
sigma = 0.025; // [N/m]
ohm = 152*1.2/60; // [rps]
ds = 868; // [kg/cubic m]
phiD = 0.385;

// Therefore from equation 7.49
We = Di^3*ohm^2*ds/sigma; // [Weber number]

// From equation 7.50
dvs = Di*0.052*(We)^-0.6*exp(4*phiD); // [m]
disp(dvs);
// Substituting in equation 7.48
a = 6*phiD/dvs; // [square m/cubic m]
printf("The Sauter mean drop diameter and the interfacial area is %e m and %f square m/cubic m respectively.\n\n",dvs,a); 