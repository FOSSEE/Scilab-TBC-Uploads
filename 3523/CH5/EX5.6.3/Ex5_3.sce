//Example 3// Ch 5
clc;
clear;
close;
// given data
d = 0.001;//in meters
p1 = 3*101.3; //gas pressure of 3 atmp in kPa
p2 = 5*101.3; //gas pressure of 5 atmp in kPa
C =  2400.4;//constant value
A = 0.027;//constant value
As = 10^8;//avalanche size
Vs1 = C*p1*d/A;//breakdown voltage at 3 atm
Vs2 = C*p2*d/A;//breakdown voltage at 5 atm
Vs3 = (log(As)+C*p1*d)/A;//breakdown voltage at 3 atm corresponding to an avalanche size
Vs4 = (log(As)+C*p2*d)/A;//breakdown voltage at 5 atm corresponding to an avalanche size
printf("breakdown voltage at 3 atm %f kV \n",Vs1*10^-3)
printf("breakdown voltage at 5 atm %f kV \n",Vs2*10^-3)
printf("breakdown voltage at 3 atm corresponding to an avalanche size %f kV \n",Vs3*10^-3)
printf("breakdown voltage at 5 atm corresponding to an avalanche size %f kV \n",Vs4*10^-3)
//acc. to eq N2>=N1 and Neph>=1 with increase of gas pressure improves the dielectric strength of the gas since breakdown voltage increses with gas pressure
Vs1pos = 27.5;//postive breakdown voltage at 3 atm in kV
Vs1neg = 27.73;//negative breakdown voltage at 3 atm in kV
Vs2pos = 45.2;//postive breakdown voltage at 5 atm in kV
Vs2neg = 45.5;//negative breakdown voltage at 5 atm in kV
printf("positive breakdown voltage at 3 atm %f kV \n",Vs1pos)
printf("negative breakdown voltage at 3 atm %f kV \n",Vs1neg)
printf("positive breakdown voltage at 5 atm %f kV \n",Vs2pos)
printf("negative breakdown voltage at 5 atm %f kV \n",Vs2neg)
