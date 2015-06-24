
clc
clear
//Input data
O=1000//Combined output of two units in MW
//Two coal generating units P and Q have the incremental heat rate defined by
//(IR)P=0.4818*10^-7.LP^4 - 0.9089*10^-4.LP^3 + 0.6842*10^-1.LP^2 - 0.2106*10.LP + 9860
//(IR)R=0.9592*10^-7.LQ^4 - 0.7811*10^-4.LQ^3 + 0.2625*10^-1.LQ^2 - 0.2189*10.LQ + 9003

//Calculations
//LP+LQ=1000
//By making (IR)P=(IR)Q and solving the above three equations by a numerical methos such as Newton-Raphson algorithm, we get 
LP=732.5//Heat rate in MW
LQ=(O-LP)//Heat rate in MW
IR=0.4818*10^-7*LP^4 - 0.9089*10^-4*LP^3 + 0.6842*10^-1*LP^2 - 0.2106*100*LP + 9860
IR1=0.9592*10^-7*LQ^4 - 0.7811*10^-4*LQ^3 + 0.2625*10^-1*LQ^2 - 0.2189*10*LQ + 9003

//Output
printf('Incremental heat transfer rate at which the combined output of the two units is %3.0f MW is IR = (IR)P = (IR)Q = %i kJ/kWh',O,IR)
