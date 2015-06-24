clc
clear
//input data
b2=10//Rotor blade air angle at exit in degree
Dt=0.6//The tip diameter in m
Dh=0.3//The hub diameter in m
N=960//The speed of the fan in rpm
P=1//Power required by the fan in kW
pi=0.245//The flow coefficient
P1=1.02//The inlet pressure in bar
T1=316//The inlet temperature in K
R=287//The universal gas constant in J/kg.K
Cp=1.005//The specific heat of air at constant pressure in kJ/kg.K
r=1.4//The ratio of specific heats of air
g=9.81//Acceleration due to gravity in m/s^2

//calculations
A=(3.141/4)*((Dt^2)-(Dh^2))//Area of the fan at inlet in m^2
Dm=(Dt+Dh)/2//The mean rotor diameter in m
U=(3.141*Dm*N)/60//The mean blade speed in m/s
Ca=pi*U//The axial velocity in m/s
Q=A*Ca//The flow rate of air in m^3/s
d=(P1*10^5)/(R*T1)//Density of air in kg/m^3
b1=atand(U/Ca)//Rotor blade angle at entry in degree
dPst=((d*(U^2)*(1-((pi*tand(b2))^2)))/2)//Static pressure rise across the stage in N/m^2
dPr=dPst//Static pressure rise across the rotor in N/m^2
Wm=U*(U-(Ca*tand(b2)))//Work done per unit mass in J/kg
dP0st=d*Wm//Stagnation pressure of the stage in N/m^2
DR1=dPr/dP0st//Degree of reaction
DR2=(Ca/(2*U))*(tand(b1)+tand(b2))//Degree of reaction

//output
printf('(a)Rotor blade angle at entry is %3.2f degree\n(b)Degree of reaction is %3.3f',b1,DR1)
