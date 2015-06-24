clc
clear
//Input data
cv=44000;//The lower calorific value of liquid fuel in kJ/kg
C=84;//The carbon content present in the fuel in percentage
H=16;//The hydrogen content present in the fuel in percentage
t=25;//The temperature in degree centigrade
hfg=2442;//The enthalpy of vaporization for water in kJ/kg
c=12;//Molecular weight of carbon 
h=2;//Molecular weight of hydrogen
co2=44;//Molecular weight of carbondioxide
h2o=18;//Molecular weight of water 
o2=32;//Molecular weight of oxygen
R=8.314;//Universal gas constant in J/molK

//Calculations
CO2=[0.84*(co2/c)];//The amount of carbondioxide present per kg of fuel in kg
H2O=[0.16*(h2o/h)];//The amount of water present per kg of fuel in kg
cvd=H2O*hfg;//The difference in the higher and lower calorific value in kJ/kg fuel 
HHV=cv+cvd;//The higher calorific value of the liquid fuel in kJ/kg fuel
np=3.08/co2;//number of moles of product in kmol/kg fuel
nr=3.52/o2;//The number of moles of reactant in kmol/kg fuel
n=np-nr;//The difference in the moles
HHVv=HHV+[n*R*(t+273)];//The higher calorific value at constant volume in kJ/kg fuel
LHVv=cv+[n*R*(t+273)];//The lower calorific value at constant volume in kJ/kg fuel

//Output
printf(' The higher calorific value at constant pressure = %3.0f kJ/kg fuel \n The higher calorific value at constant volume = %3.0f kJ/kg fuel \n The lower calorific value at constant volume = %3.0f kJ/kg fuel',HHV,HHVv,LHVv)
