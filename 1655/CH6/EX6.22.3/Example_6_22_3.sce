// Example 6.22.3  page 6.73

clc;
clear;

beta0=1.85d7;
T=293;      //temperature
k=1.38d-23; //Boltzman constant
Ea=0.9*1.6d-19;
theta=0.65; //thershold

betar=beta0*%e^(-Ea/(k*T));
t=-log(theta)/betar;

printf("\nDegradation rate is %.2e per hour.\nOperating lifetime is %.1e hour.",betar,t);

//answer in the book for Degradation rate is 6.4e-09 per hour, deviation of 0.08e-9
//answer in the book for Operating lifetime is 6.7e+07 hour, deviaiton of 0.1e1
