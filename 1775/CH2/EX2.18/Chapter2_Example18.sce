//Chapter-2, Illustration 18, Page 76
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
Tmin=300;//Minimum temperature in K
Tmax=1073;//Maximum temperature in K
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K

//CALCULATIONS
Wmax=Cp*((sqrt(Tmax)-sqrt(Tmin))^2);//Maximum work output in kJ/kg
nB=(1-sqrt(Tmin/Tmax))*100;//Brayton cycle efficiency
nC=(1-(Tmin/Tmax))*100;//Carnot efficiency
r=nB/nC;//Ratio of brayton cycle efficiency to carnot efficieny

//OUTPUT
mprintf('Maximum work per kg of air is %3.2f kJ/kg \n Cycle efficiency is %3.0f percent \n Ratio of brayton cycle efficiency to carnot efficieny is %3.3f',Wmax,nB,r)






//==============================END OF PROGRAM=================================
