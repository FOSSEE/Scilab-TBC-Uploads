//Exa4
clc;
clear;
close;
//given data :
rho=1.73*10^-8;//in ohm-meter
toh=2.42*10^-14 ; //in second
e=1.6*10^-19; //in C
m=9.1*10^-31;//in kg
sigma=1/rho;
//(i) Number of free electrons per m^3
n=(m*sigma)/(e^2*toh);
disp("Number of free electrons per cube meter is : "+string(n));
//(ii) Mobility of electrons,
miu_e=(e*toh)/m;
disp("Mobility of electrons is : "+string(miu_e)+" m^2/V-s");
//Note: Answer in the book is wrong