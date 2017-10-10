clc
clear
//INPUT DATA
p1=100;//Boiler pressure in Bar 
p2=20;//low pressure turbine pressure in Bar
p3=0.1;//condenser pressure in Bar
T=500;//Temperature inlet to turbine in Degree C
h1=3373.7;//Enthalpy in kJ/kg
h2=2797.2;//Enthalpy in kJ/kg
h5=191.8;//Enthalpy in kJ/kg
h9=2584.7;//Enthalpy in kJ/kg
S5=0.649;//Entropy in kJ/kg.K
S9=8.15;//Entropy in kJ/kg.K
Wn=1500;//Net work done in kJ/kg
nRi=401;//Rankine efficiency in percentage 


//CALCULATIONS
Qs=(Wn/nRi)*1000;//heat supplied in kJ/kg
h3=Qs-(h1-h5-h2);//Enthalpy in kJ/kg
t3=450+(((h3-3357.5)*(T-450))/(3467.6-3357.5));//Temperature in degree C

//OUTPUT
printf('Temperature of steam leaving is %3.2f degree C',t3)
