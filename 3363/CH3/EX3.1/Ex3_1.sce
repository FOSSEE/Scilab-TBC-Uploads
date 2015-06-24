//Example 3.1, page 74
clc
m=1//in kg
h=6.63*10^-34//Joule-sec
v=10//in m/sec
lambda=h/(m*v)
disp('part a')
printf("\n De broglie wavelength for v=10m/sec %e m",lambda)
disp('part b')
//For KE=100ev
m=9.1*10^-31
K=100*1.6*10^-19//in Joules
lambda=h/sqrt(2*m*K)
printf("\n De broglie wavelength is %e m",lambda)