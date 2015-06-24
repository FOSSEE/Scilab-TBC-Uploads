clc
clear
//Input data
P1=1;//Pressure in an oil gas turbine installation in bar
T1=298;//Initial Temperature in K
P2=4;//Pressure after compression in bar
CV=42100;//Calorific value of oil in kJ/kg
T3=813;//The temperature reached after compression in K
m=1.2;//Air flow rate in kg/s
Cp=1.05;//Specific heat of air at constant pressure in kJ/kg K
r=1.4;//Isentropic ratio

//Calculations
r1=P2/P1;//Pressure ratio
T2=(r1)^((r-1)/r)*T1;//Temperature at the end of compression stroke in K
T4=T3/(r1)^((r-1)/r);//Temperature at the end of isentropic expansion in K
Wt=m*Cp*(T3-T4);//Work done by the turbine in kJ/s or kW
Wc=m*Cp*(T2-T1);//Work to be supplied to the compressor in kJ/s or kW
Wn=Wt-Wc;//Net work done by the turbine unit in kW
qs=m*Cp*(T3-T2);//Heat supplied by the oil in kJ/s
M=qs/CV;//Mass of fuel burnt per second in kg/s
a=m/M;//Air fuel ratio

//Output
printf('(a)The net power output of the installation is %3.2f kW\n (b)Air fuel ratio is %3.1f',Wn,a)
