clc
clear
//INPUT DATA
p=(100*10^3);//Rate of heat source in kW
P1=40;//Boiler pressure in bar
P2=0.1;//Condenser pressure in bar
n=0.8;//Adiabatic efficiency
S1=6.0685;//Entropy in kJ/kg.K
S3=0.649;//Entropy in kJ/kg.K
S5=8.15;//Entropy in kJ/kg.K
h1=2800.5;//Enthalpy in kJ/kg
h2=1920.67;//Enthalpy in kJ/kg
h3=191.8;//Enthalpy in kJ/kg
h5=2584.7;//Enthalpy in kJ/kg
v3=0.001001;//Specific volume in m^3/kg


//CALCULATIONS
Wt1=(h1-h2);//Ideal turbine work in kJ/kg
WtA=Wt1*n;//Actual turbine work in kJ/kg
Wp=v3*(P1-P2);//Pump work in kJ/kg
h4=h3+Wp;//Enthalpy in kJ/kg
Qs=(h1-h4);//heat supplied in kJ/kg
h2x=h1-WtA;//Enthalpy in kJ/kg
nRA=((WtA-Wp)/Qs)*100;//Cycle efficiency
m=p/Qs;//Mass flow rate in kJ/s
P=m*(WtA-Wp);//power output in kW
ssc=m*3600/P;//Specific steam consumption in kg/kW.hr

//OUTPUT
printf('(i) The cycle efficiency is %3.2f percent \n(ii) The power output is %3.1f kW \n(iii) The specific flow rate of steam is %3.2f kg/kW.hr',nRA,P,ssc)
