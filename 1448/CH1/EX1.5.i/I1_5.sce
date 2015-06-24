clc
//Initialzation of variables
T=25+273 //K
sigma=0.4*10^(-18) //m^2
P=10^5 //Pa
c=481.8 //m/sec
//Calculations
Lambda=8.31451*T/(2^0.5 *6.022*10^23 *sigma*P)
frequency=2^0.5 *6.022*10^23 *sigma*P*c/(8.31451*T)
//Results
printf('Mean free path = %.2e m',Lambda)
printf('\n Collision frequency = %.2e m',frequency)
