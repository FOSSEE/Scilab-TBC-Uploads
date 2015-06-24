clc;clear;
//Example 15.14
//calculation of power developed

//given values
M=235;//atomic mass of Uranium in kg
m=20.4;//amount of uranium consumed per day in kg
E=200*10^6*1.6*10^-19;//energy released per fission
t=3600*1000;//time of operation
NA=6.02*10^26;//avogadros number

//calculation
n=NA*m/M;//no of nuclei in 20.4kg
E1=n*E;//energy produced by n nuclei
P=E1/t;//in Watt
disp(P/10^6,'power developed in MW is');