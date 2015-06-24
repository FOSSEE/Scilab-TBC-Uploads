
clc
clear
//Input data
m=5//Mass flow rate in kg/s
p1=40//Pressure in bar
T1=440+273//Temperature in K
p2=1.5//Pressure in bar
p3=1//Pressure in bar
T3=60+273//Temperature in K
p4=16//Pressure in bar
T4=100+273//Temperature in K
p5=9//Pressure in bar

//Calculations
h1=3307.1//Enthalpy in kJ/kg
s1=6.9041//Entropy in kJ/kg.K
s2=s1//Entropy in kJ/kg.K
h2=2570.8//Enthalpy in kJ/kg
h3=417.46//Enthalpy in kJ/kg
h6=(251.13+(1.0172*10^-3)*(p3-0.1994)*100)//Enthalpy in kJ/kg
m3=(m/2)//Mass flow rate in kg/s
m6=m3//Mass flow rate in kg/s
h4=(m3*h3+m6*h6)/m//Enthalpy in kJ/kg
h5=(h4+(1.0291*10^-3)*(p1-p3)*100)//Enthalpy in kJ/kg
ha=241.58//Enthalpy in kJ/kg
sa=0.7656//Entropy in kJ/kg.K
sb=sa//Entropy in kJ/kg.K
hb=229.43//Enthalpy in kJ/kg
hc=71.93//Enthalpy in kJ/kg
hd=hc+(0.7914*10^-3*(p4-p5)*100)//Enthalpy in kJ/kg
Q1=(m*(h1-h5))/1000//Heat supplied in kW
Wnets=(m*((h1-h2)-(h5-h4)))//Net workdone by steam in kW
mR12=(m3*(h2-h3))/(ha-hd)//Mass of R12 in kg/s
WnetR=(mR12*((ha-hb)-(hd-hc)))//Net workdone by R12 in kW
T=Wnets+WnetR//Total output in kW
Qh=(m6*(h2-h6))//Heat rejected in kW

//Output
printf('(a) Rate of heat transfer in the steam generator is %3.3f kW \n (b) The net power output of the binary cycle is %i kW \n (c) The rate of heat transfer to the industrial process is %3.0f kW',Q1,T,Qh)
