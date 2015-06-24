// Exa Misc. 6.18
clc;
clear;
close;
format('v',6)
// Given data
Ad = 5*10^5;// differential mode gain
CMRR = 80;// in dB
A_CM = Ad/(10^(CMRR/20));// common mode gain
V1 = 745;// in µV
V1 = V1 * 10^-6;// in V
V2 = 740;// in µV
V2 = V2 * 10^-6;// in V
// CMRR = 20*log( Ad/A_CM );
// //output voltage in differential mode gain
Vod = Ad*(V1-V2);// in V
disp(Vod,"The output voltage in differential mode gain in volts is : ")
//output voltage due to common mode gain 
Vo_CM = A_CM*((V1+V2)/2);//in V
disp(Vo_CM,"The output voltage due to common mode gain in volts is : ")
Pr = (Vo_CM/Vod)*100;// percentage error in %
disp(Pr,"The percentage error due to common mode in % is")
