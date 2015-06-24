clc
clear

m=3000;     //mass in kg
P=736;      //Power in kW
t=5*3600;   //Time in seconds
HV=27170    //Heating value in kJ/kg

E=P/((m/t)*HV);
Eff=E*100;
printf('Thermal Efficiency= %2.2f percent',Eff);
