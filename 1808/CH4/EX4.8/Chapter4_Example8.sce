clc
clear
//INPUT DATA
p1=40;//Boiler pressure in bar
p2=4;//lp turbine pressure in bar
p4=0.1;//condenser pressure in bar
h1=2960.7;//Enthalpy in kJ/kg
S1=6.362;//Entropy in kJ/kg.K
h4=3066.8;//Enthalpy in kJ/kg
S4=7.566;//Entropy in kJ/kg.K
S3=6.8943;//Entropy in kJ/kg.K
S10=1.7764;//Entropy in kJ/kg.K
h3=2737.6;//Enthalpy in kJ/kg
h10=604.7;//Enthalpy in kJ/kg
h6=191.8;//Enthalpy in kJ/kg
h9=2584.7;//Enthalpy in kJ/kg
S6=0.649;//Entropy in kJ/kg.K
S9=8.15;//Entropy in kJ/kg.K
V6=0.001001;//Specific volume in m^3/kg


//CALCULATIONS
x2=((S1-S10)/(S3-S10));//quality of steam
h2=(h10+(x2*(h3-h10)));//Enthalpy in kJ/kg
x5=((S4-S6)/(S9-S6));//quality of steam
h5=(h6+(x5*(h9-h6)));//Enthalpy in kJ/kg
Wt=((h1-h2)+(h4-h5));//turbine work in kJ/kg
h7=(h6+(V6*(p1-p4*100)));//Enthalpy in kJ/kg
Wp=(h7-h6);//Pump work in kJ/kg
Qs=((h1-h7)+(h4-h2));//heat supplied in kJ/kg
nRr=((Wt-Wp)/Qs)*100;//Rankine cycle efficiency in percentage


//OUTPUT
printf('(i) The Rankine efficiency is %3.2f percent ',nRr)
