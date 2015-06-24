clc
clear
//Input data
c1=7;//Velocity of air at entrance in m/s
c2=5;//Velocity of air at exit in m/s
p1=100;//Pressure at the entrance in kPa
p2=700;//Pressure at the exit in kPa
v1=0.95;//Specific volume at entrance in m^3/kg
v2=0.19;//Specific volume at exit in m^3/kg
u=90;//Change in internal energy of the air entering and leaving in kJ/kg
z=0;//Potential energy is neglected 
Q=-58;//Heat rejected to the surroundings in kW
m=0.5;//The rate at which air flow in kg/s
g=9.81;//Gravitational constant in m/s^2

//Calculations
P=m*([(c1^2-c2^2)/(2000)]+(p1*v1-p2*v2)-u)+(Q);//The rate of work input to the air in kW
A=(v1*c2)/(v2*c1);//From continuity equation the ratio of areas
D=A^(1/2);//The ratio of inlet pipe diameter to the outlet pipe diameter

//Output
printf('(a)The rate of work input to the air P = %3.3f kW \n (b)The ratio of inlet pipe diameter to the outlet pipe diameter D = %3.2f ',P,D)
