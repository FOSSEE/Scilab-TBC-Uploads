clc
clear
//Input data
p=5000;//Power output of an adiabatic steam turbine in kW
p1=2000;//Pressure at the inlet in kPa
p2=0.15;//Pressure at the exit in bar
t1=400;//temperature at the inlet in degree centigrade
x=0.9;//Dryness at the exit
c1=50;//Velocity at the inlet in m/s
c2=180;//Velocity at the exit in m/s
z1=10;//Elevation at inlet in m
z2=6;//Elevation at exit in m
h1=3248.7;//Enthalpy at the inlet from the steam table corresponding to and 20 bar in kJ/kg
hf=226;//Enthalpy at exit at 0.15 bar from steam tables in kJ/kg
hfg=2373.2;//Enthalpy at exit at 0.15 bar from steam tables in kJ/kg
g=9.81;//Gravitational constant in m/s^2

//Calculations
h2=hf+(x*hfg);//Enthalpy at the exit in kJ/kg
W=(h1-h2)+((c1^2-c2^2)/(2*1000))+((g*(z1-z2))/1000);//Work done in the system in kJ/kg
m=p/W;//Mass flow rate of the steam 

//Output
printf('(a)The work done per unit mass of the steam flowing through turbine W = %3.2f kJ/kg \n (b)The mass flow rate of the steam m = %3.3f kg/s ',W,m)
