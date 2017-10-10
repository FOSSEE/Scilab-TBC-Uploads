clc
clear
//INPUT DATA
P1=70;//Boiler pressure in Bar
P2=0.1;//condenser pressure in Bar
P3=10;//bled pressure in Bar
T=400;//Boiler temperature in Degree C
h6=1267.4;//Enthalpy in kJ/kg
h1=3158.1;//Enthalpy in kJ/kg
S1=6.448;//Entropy in kJ/kg.K
h7=762.2;//Enthalpy in kJ/kg
h9=2776.2;//Enthalpy in kJ/kg
S7=2.1382;//Entropy in kJ/kg.K
S9=6.5828;//Entropy in kJ/kg.K
h4=191.8;//Enthalpy in kJ/kg
h10=2584.7;//Enthalpy in kJ/kg
S4=0.649;//Entropy in kJ/kg.K
S10=8.15;//Entropy in kJ/kg.K
V4=0.001;//Specific volume in m^3/kg


//CALCULATIONS
x2=((S1-S7)/(S9-S7));//quality of steam
h2=h7+(x2*(h9-h7));//Enthalpy in kJ/kg
x3=((S1-S4)/(S10-S4));//quality of steam
h3=h4+(x3*(h10-h4));//Enthalpy in kJ/kg
h5=h4+(V4*(P1-P2));//Enthalpy in kJ/kg
Wp=h5-h4;//Pump work in kJ/kg
m1=((h6-h5)/(h2-h7));//mass flow rate
Wt=(h1-h2)+(1-m1)*(h2-h3);//Turbine work in kJ/kg
Qs=(h1-h6);//Heat supplied in kJ/kg
nR=((Wt-Wp)/Qs)*100;//Rankine efficiency in percentage

//OUTPUT
printf(' Thr Rankine cycle efficiency is %3.2f percentage ',nR)
