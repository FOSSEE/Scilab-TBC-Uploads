clc
clear
//input data
m=3//Mass flow rate of air in kg/s
P1=100*10^3//The atmospheric pressure in Pa
T1=310//The atmospheric temperature in K
nb=0.8//The efficiency of the blower
nm=0.85//The mechanical efficiency
P=30//The power input in kW
R=287//The universal gas constant in J/kg.K
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
no=nb*nm//Overall efficiency of the blower
d=(P1)/(R*T1)//The density of the air in kg/m^3
dP=((no*P*10^3)/m)*d//The pressure developed in N/m^2
dH=((dP)/(g*dw))*(10^3)//The pressure developed in mm W.G

//output
printf('(a)Overall efficiency of the blower is %3.2f\n(b)The pressure developed is %3.2f mm W.G',no,dH)
