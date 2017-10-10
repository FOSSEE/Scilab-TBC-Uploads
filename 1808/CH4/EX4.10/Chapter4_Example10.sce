clc
clear
//INPUT DATA
p1=100;//pressure in bar
p2=10;//pressure in bar
p3=0.1;//pressure in bar
T1=500;//Temperature of turbine in Degree C
T2=450;//Temperature of turbine in Degree C
h1=3240.9;//Enthalpy in kJ/kg
h4=3370.7;//Enthalpy in kJ/kg
h3=2776.2;//Enthalpy in kJ/kg
h10=762.6;//Enthalpy in kJ/kg
h6=191.8;//Enthalpy in kJ/kg
h9=2584.7;//Enthalpy in kJ/kg
S1=6.419;//Entropy in kJ/kg.K
S4=7.618;//Entropy in kJ/kg.K
S3=6.5828;//Entropy in kJ/kg.K
S10=2.1382;//Entropy in kJ/kg.K
S6=0.649;//Entropy in kJ/kg.K
S9=8.15;//Entropy in kJ/kg.K
nt=0.8;//Turbine efficiency in percentage
v6=0.001001;//Specific volume in m^3/kg
P=100000;//power output in kW


//CALCULATIONS
x2=((S1-S10)/(S3-S10));//quality of steam
h2=h10+(x2*(h3-h10));//Enthalpy in kJ/kg
h21=h1-(nt*(h1-h2));//Enthalpy in kJ/kg
x5=((S4-S6)/(S9-S6));//quality of steam
h5=h6+(x5*(h9-h6));//Enthalpy in kJ/kg
h51=h4-(nt*(h4-h5));//Enthalpy in kJ/kg
Wt=(h1-h21)+(h4-h51);//Turbine work in kJ/kg
h7=h6+(v6*(p1-p3)*100);//Enthalpy in kJ/kg
Wp=(h7-h6);//Pump work in kJ/kg
Qs=(h1-h7)+(h4-h21);//heat supplied in kJ/kg
nRi=((Wt-Wp)/Qs)*100;//Cycle efficiency
m=P/(Wt-Wp);//mass flow rate in kg/s
Qr=(h51-h6)*m;//rate of heat transfer from condenser in kW

//OUTPUT
printf('(i)Thermal efficiency is %3.2f percent \n (ii)Mass flow rate is %3.2f kg/s \n (iii)Rate of heat transfer from the condenser %3.2f kW',nRi,m,Qr)

