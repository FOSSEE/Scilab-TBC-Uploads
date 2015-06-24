
clc
clear
//Input data
h=27//Head in m
A=430//Area in sq.km
R=150//Rainfall in cm/year
pr=65//Percentage of rainfall utilised
pe=95//Penstock efficiency in percent
te=80//Turbine efficiency in percent
ge=86//Generator efficiency in percent
lf=0.45//Load factor
d=1000//Density of water in kg/m^3

//Calculations
Q=A*10^6*(R/100)*(pr/100)//Discharge in m^3 per year
Qs=(Q/(365*24*3600))//Quantity of water per second in m^3
P=(pe/100)*(te/100)*(ge/100)*d*Qs*9.81*h*10^-3//Power in kW
plc=(P/lf)//Peak load capacity in kW
C=(plc/(2*(ge/100)))//Capacity of each unit in kW

//Output
printf('(a) Power developed is %3.0f kW \n (b) As the available head is low, Kaplan turbines are suggested.\n Two turbines each of 3000kW capacity may be installed.',P)
