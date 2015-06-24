clc
clear
//Input data
P1=10;//Pressure of steam in bar
f=0.9;//Dryness fraction of steam
At=350;//Throat area in mm^2
Pb=1.4;//Back pressure in bar
h1=2574.8;//Enthalpy of steam at nozzle inlet from steam tables in kJ/kg
ft=0.87;//Dryness fraction of steam at throat pressure
fe=0.81;//Dryness fraction of steam at exit pressure
ht=2481;//Enthalpy of steam at throat pressure at ft in kJ/kg
vt=0.285;//Specific volume of steam at throat in m^3/kg
he=2266.2;//Enthalpy of steam at exit conditions in kJ/kg
ve=1.001;//Specific volume of steam at exit conditions in m^3/kg

//Calculations
Pt=0.582*P1;//Steam pressure at the throat in bar
hd=h1-ht;//Enthalpy drop upto the throat in kJ/kg
Vt=44.7*(hd)^(0.5);//Velocity of steam at the throat in m/s
hde=h1-he;//Enthalpy drop from nozzle entrance to exit in kJ/kg
Ve=44.7*(hde)^(0.5);//Velocity of steam at nozzle exit in m/s
Ae=(At*Vt*ve)/(Ve*vt);//Exit area of nozzle from the mass rate of flow equation in mm^2

//Output
printf('(a)Final exit velocity of steam is %3.1f m/s\n (b)Cross sectional area of the nozzle at exit for maximum discharge is %3.0f mm^2',Ve,Ae)
