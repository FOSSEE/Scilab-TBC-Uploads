clc
//initialisation of variables
V= 2.5*10^4 //m/sec
m= 30 //gms
s= 10*10^-16 //cm^2
N= 6.023*10^23 //molecules
T= 300 //K
k= 8.3*10^7
//CALCULATIONS
t= sqrt((m/(%pi*k*T)))*(V/(4*s*N))
//RESULTS
printf (' lifetime = %.e sec',t)
