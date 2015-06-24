clc;
//page 567
//problem 11.5

//The voltage level of reciever is V = 5 mV
V = 5*10^-3;

//The time required to transfer one bit is T = 1/9600 sec
T = 9600^-1;

//the signal energy of a bit be Es
Es = (V^2)*T;

//The power spectral density is n/2 = 10^-9 Watt/hertz
n = 2*10^-9;

//Probability error for optimal reciever is Pe
Pe = 0.5*erfc((Es/n)^0.5);

disp('The probability of error is '+string(Pe));

//When the data rate is doubled, the new effective energy per bit is Es_new
Es_new = (V^2)*(T/2);

//The new probability of error is Pe_new
Pe_new = 0.5*erfc((Es_new/n)^0.5);

//Percentage increase in error rate is P
P = 100*(Pe_new - Pe)/Pe;

disp('Percentage increase in error rate is '+string(P));

//Voltage required to restore probability levels, V_new
V_new = V*2^0.5;

disp('Voltage required to restore the probability levels is '+string(V_new)+' Volts');









