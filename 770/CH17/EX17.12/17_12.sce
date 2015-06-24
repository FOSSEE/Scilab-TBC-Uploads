clear;
clc;

//Example - 17.12
//Page number - 611
printf("Example - 17.12 and Page number - 611\n\n");

// Given
// log(K) = -2.61 + 23672.62/T - 7.17*log(T) + 1.24*10^(-2)*T - 0.148*10^(-5)*T^(2) + 0.039*10^(-9)*T^(3)

// We know that
// dlog(K)/dT = delta_H_rkn/(R*T^(2))

// Differentiating the above expression of log(K),we get
// dlog(K)/dT = -23672.62/T^(2) - 7.17/T + 1.24*10^(-2) - 2*0.148*10^(-5)*T + 3*0.039*10^(-9)*T^(2)

// On further simplification we get 
// delta_H_rkn = -47037.5 - 14.24*T + 2.46*10^(-2)*T^(2) - 0.59*10^(-5)*T^(3) + 0.23*10^(-9)*T^(4)
printf(" delta_H_rkn = -47037.5 - 14.24*T + 2.46*10^(-2)*T^(2) - 0.59*10^(-5)*T^(3) + 0.23*10^(-9)*T^(4)\n");










