//ques-18.32
//Calculating entropy change when pressure is kept constant and when volume is kept constant
clc
n=1;//moles of ideal gas
Cv=12.471;//calorific volume (in J/K/mol)
T1=300; T2=600;//temperature (in K)
R=8.314;//in J/K/mol
//Pressure is constant
Cp=Cv+R;//calorific pressure (in J/K/mol)
S_P=2.303*n*Cp*log10(T2/T1);
//Volume is constant
S_V=2.303*n*Cv*log10(T2/T1);
printf("The entropy change when pressure is kept constant is %.3f J/K/mol and when volume is kept constant is %.3f J/K/mol.",S_P,S_V);
