clc;clear;
//Example 15.13
//calculation of power output

//given values
M=235;//atomic mass of Uranium in kg
e=5/100;//reactor efficiency
m=25/1000;//amount of uranium consumed per day in kg
E=200*10^6*1.6*10^-19;//energy released per fission
t=8.64*10^4;//day in seconds
NA=6.02*10^26;//avogadros number

//calculation
n=NA*m/M;//no of nuclei in 25g
E1=n*E;//energy produced by n nuclei
E2=E1*e;//energy converted to power
P=E2/t;//power output in Watt
disp(P/10^6,'power output in MW is');