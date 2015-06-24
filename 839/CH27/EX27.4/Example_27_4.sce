//clear//
clear;
clc;

//Example 27.4
//Given
alpha = 1+0.029;
//From Example 27.3
sigma = 2.5; //[erg/cm^3]
T = 300; //[K]
N = 6.0222*10^23;
R = 8.3134*10^7; //[erg/g mol-K]
M = 74.56; //[Molecular weight]
rho = 1.988; //[g/cm^3]
nu = 2;
VM = M/rho; //[cm^3/g mol]

//Using Eq.(27.9)
L = 4*VM*sigma/(2*R*T*log(alpha))*10^7; //[nm]
disp('nm',L,'size of nuclues (L) = ');
