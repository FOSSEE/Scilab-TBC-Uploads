clc;funcprot(0);//EXAMPLE 3.22
// Initialisation of Variables
rc=15.3;....................//Compression ratio
re=7.5;...................//Expansion ratio
cp=1.005;.................//Specific heat at constant pressure in kJ/kg K
cv=0.718;..................//Specific heat at constant volume in kJ/kgK
ga=1.4;....................//Ratio of specific heats
p1=1;....................//Initial pressure in bar
t1=300;..................//Initial temperature in K
etamech=0.8;..................//Mechanical efficiency
C=42000;...........................//Calorific value of fuel in kJ/kg
rita=0.5;.........................//Ratio of indicated thermal efficiency to air standard efficiency
R=287;..........................//Gas constant in kJ/kgK
//Calculations
t2=t1*(rc^(ga-1));.................//Temperature at the end of adiabatic compression in K
p2=p1*(rc^ga);...................//Pressure at the end of adiabatic compression in bar
t3=(rc*t2)/re;....................//Temperature at the end of constant pressure process in K
v2=1;..................//Volume at the end of adiabatic process in m^3
m=(p2*v2*10^5)/(R*t2);..................//Mass of working fluid in kg
t4=t3*((1/re)^(ga-1));...................//Temperature at the end of adiabatic expansion in K
W=[m*(cp*(t3-t2))]-[m*(cv*(t4-t1))];........//Work done in kJ
pm=W/(rc-1);..............................//Mean effective pressure in kN/m^2
disp(pm/100,"Mean effective pressure in bar:")
disp((p2*100)/(pm),"Ratio of maximum pressure to mean effective pressure ")
etacy=W/(m*cp*(t3-t2));...............//Cycle efficiency
disp(etacy*100,"Cycle efficiency in %:")
etaith=rita*etacy;..................//Indicated thermal efficiency
etabth=etaith*etamech;...............//Brake thermal efficiency
mf=3600/(etabth*C);................//Fuel consumption per kWh
disp(mf,"Fuel consumption in kg/kWh:")
