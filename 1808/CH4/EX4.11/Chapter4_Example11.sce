clc
clear
//INPUT DATA
p1=90;//pressure in bar
p2=9;//pressure in bar
p3=0.1;//pressure in bar
T=450;//Temperature in Degree C
h1=2956.6;//Enthalpy in kJ/kg
S1=6.036;//Entropy in kJ/kg.K
h9=2772.1;//Enthalpy in kJ/kg
h6=742.6;//Enthalpy in kJ/kg
S9=6.6192;//Entropy in kJ/kg.K
S6=2.0941;//Entropy in kJ/kg.K
V6=0.001121;//Specific volume in m^3/kg
h10=2584.7;//Enthalpy in kJ/kg
h4=191.8;//Enthalpy in kJ/kg
S10=8.15;//Entropy in kJ/kg.K
S4=0.649;//Entropy in kJ/kg.K
V4=0.001001;//Specific volume in m^3/kg
P=120000;//power output in kW

//CALCULATIONS
x2=((S1-S6)/(S9-S6));//quality of steam
x3=((S1-S4)/(S10-S4));//quality of steam
h2=h6+(x2*(h9-h6));//Enthalpy in kJ/kg
h3=h4+(x3*(h10-h4));//Enthalpy in kJ/kg
h5=h4+(V4*(p1-p3))*100;//Enthalpy in kJ/kg
Wp1=h5-h4;//Pump work in kJ/kg
h7=h6+(V6*(p1-p2))*100;//Enthalpy in kJ/kg
Wp2=h7-h6;//Pump work in kJ/kg
m1=((h6-h5)/(h2-h5));//Mass flow rate in kJ/s
Wt=(h1-h2)+((1-m1)*(h2-h3));//Turbine work in kJ/kg
Wp=(h7-h6)+((1-m1)*(h5-h4));//Pump work in kJ/kg
Qs=(h1-h7);//heat supplied in kJ/kg
nR=((Wt-Wp)/Qs)*100;//Rankine efficiency in percentage
m=P/(Wt-Wp);//mass flow rate in kJ/s

//OUTPUT
printf('(i) The Thermal efficiency is %3.3f percent \n (ii) Mass flow rate of steam entering to the turbine is %3.2f kg/s ',nR,m)
