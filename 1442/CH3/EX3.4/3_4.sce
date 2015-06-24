clc
//initialisation of variables
m= 500 //kg
V= 50 //L
P= 700 //kPa
T= 25 //C
P0= 100 //kPa
g= 9.8 //m/sec^2
A= 200 //cm^2
V1= 100 //L
//CALCULATIONS
pe= P0*10^3+(m*g/(A*10^-4))
W= pe*(V1-V)*10^-6
//RESULTS
printf ('work of the gas = %.2f kJ',W)
