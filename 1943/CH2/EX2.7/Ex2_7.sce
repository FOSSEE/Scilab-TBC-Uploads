
clc
clear
//Input data
m=10000//Mass flow rate of steam in kg/h
p=3//Pressure of steam in bar
P=1000//Power in kW
n=0.7//Internal efficiency of turbine

//Calculations
dh=(P*3600)/m//Change in enthalpy in kJ/kg
h2=2725.3//Enthalpy in kJ/kg from Fig. E2.7 
h1=dh+h2//Enthalpy in kJ/kg 
dh1h2s=dh/n//Change in enthalpy in kJ/kg
h2s=h1-dh1h2s//Enthalpy in kJ/kg
x2s=(h2s-561.47)/2163.8//Dryness fraction
s2s=1.6718+x2s*(6.999-1.6718)//Entropy in kJ/kg.K
s1=s2s//Entropy in kJ/kg.K
p1=37.3//Pressure in bar from Mollier diagram
t1=344//Temperature in degree C

//Output
printf('The steam condition required at inlet of the turbine: \n Enthalpy is %3.1f kJ/kg \n Entropy is %3.4f kJ/kg.K \n Pressure is %3.1f bar \n Temperature is %i degree C',h1,s1,p1,t1)
