clc
clear
//INPUT DATA
p1=5;//pressure in bar
p2=0.1;//pressure in bar
m=5;//mass flow rate in kJ/s
h4=191.8;//Enthalpy in kJ/kg
h10=2584.7;//Enthalpy in kJ/kg
S4=0.649;//Entropy in kJ/kg.K
S10=8.15;//Entropy in kJ/kg.K
V4=0.001001;//Specific volume in m^3/kg
h6=640.1;//Enthalpy in kJ/kg
h9=2747.5;//Enthalpy in kJ/kg
S6=1.8604;//Entropy in kJ/kg.K
S9=6.8192;//Entropy in kJ/kg.K
x2=0.9;//Quality of steam
Qs=70000;//heat added in boiler in kW


//CALCULATIONS
h2=h6+(x2*(h9-h6));//Enthalpy in kJ/kg
h5=h4+(V4*(p1-p2));//Enthalpy in kJ/kg
Wp1=h5-h4;//Pump work in kJ/kg
mf=((m*(h2-h5))/(h6-h5));//mass flow rate in kJ/s
h1=((Qs/mf)+h6);//Enthalpy in kJ/kg
S2=S6+(x2*(S9-S6));//Entropy in kJ/kg.K
x3=((S2-S4)/(S10-S4));//quality of steam
h3=h4+(x3*(h10-h4));//Enthalpy in kJ/kg
Wt=(mf*(h1-h2))+(mf-m)*(h2-h3);//Turbine work in kJ/kg
nR=((Wt-Wp1)/Qs)*100;//thermal efficiency in percentage
Wn=Wt-Wp1;//work in kJ/s
ssc=(mf*3600)/Wn;//specific steam consumption in kg/kW.hr
R=Wn/Wt;//Work ratio

//OUTPUT
printf('(i) The Mass flow rate of steam is %3.1f kg/s \n (ii) Thermal efficiency of rankine cycle is %3.1f percentage \n (iii) Specific steam consumption is %3.2f kg/kWhr \n (iv) Work ratio is approximately equal to %f',mf,nR,ssc,R)

