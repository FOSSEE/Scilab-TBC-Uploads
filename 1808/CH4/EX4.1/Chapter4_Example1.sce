clc
clear
//INPUT DATA
p=(100*10^3);//Rate of heat source in kW
P1=40;//Boiler pressure in bar
P2=0.1;//Condenser pressure in bar 
S1=6.0685;//Entropy in kJ/kg.K
S3=0.649;//Entropy in kJ/kg.K
S5=8.15;//Entropy in kJ/kg.K
h1=2800.5;//Enthalpy in kJ/kg
h2=1920.67;//Enthalpy in kJ/kg
h3=191.8;//Enthalpy in kJ/kg
h5=2584.7;//Enthalpy in kJ/kg
v3=0.001001;//Specific volume in m^3/kg


//CALCULATIONS
x2=(S1-S3)/(S5-S3);//quality of steam
h2=h3+(x2*(h5-h3));//Enthalpy in kJ/kg
Wp=v3*(P1-P2);//Pump work in kJ/kg
h4=h3+Wp;//Enthalpy in kJ/kg
n=(((h1-h2)-(h4-h3))/(h1-h4))*100;//Ideal cycle efficiency
rw=((h1-h2)-(h4-h3))/(h1-h2);//Work ratio
m=p/(h1-h4);//Mass flow rate in kg/s
P=m*((h1-h2)-(h4-h3));//Output power in kW
ssc=(m*3600)/P;//Specific flow rate of steam in kg/kW.hr

//OUTPUT
printf('(i) The cycle efficiency is %3.2f percent \n(ii) The work ratio is %f \n(iii)The required mass flow rate is %3.2f kg/s \n(iv) The power output is %3.1f kW \n(v) The specific flow rate of steam is %3.2f kg/kW.hr',n,rw,m,P,ssc)
