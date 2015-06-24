//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.7-3
//Introduction to engineering principles and units
//given data
//datum temp= 25 deg C
//input and output enthalpies are calculated: m*Cp*delT Cp obtained from data tables 
delT=37-25;//temp diff
Hil=342.3*1.20*delT ;
HiO2=12*29.38*delT
Hrxn=(-5648.8*10^3);//heat of reaction given
//output items
HoH2O=11*18.02*4.18*delT;
HoCO2=12*37.45*delT;
//Energy in= Energy out: Hil+HiO2-Hrxn=HoH2O+HoCO2-H310K
H310K=HoH2O+HoCO2-(Hil+HiO2-Hrxn);
mprintf("the heat reqd for complete oxidation  is %f J/mol",H310K)
//end
