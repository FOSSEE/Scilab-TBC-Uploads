clc
clear
//input data
psi=0.4//Pressure coefficient 
m=3.5//Mass flow rate of air in kg/s
N=750//The speed of fan in rpm
T1=308//The static temperature at the entry in K
Dh=0.26//The hub diameter in m
DhDt=1/3//The hub to tip ratio
P1=98.4*10^3//The static pressure at entry in Pa
nm=0.9//The mechanical efficiency
nf=0.79//Static fan efficiency
R=287//The universal gas constant in J/kg.K
Cp=1.005//The specific heat of air at constant pressure in kJ/kg.K
r=1.4//The ratio of specific heats of air
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
no=nm*nf//Overall efficiency
Dt=Dh/DhDt//The tip diameter in m
Dm=(Dt+Dh)/2//Mean rotor diameter in m
U=(3.141*Dm*N)/60//The mean blade speed in m/s
dPd=((U^2)/2)*psi//The ratio of change in pressure to density in J/kg
Wi=dPd*m//The ideal work in W
P=Wi/nm//The power required by the fan in W
d=P1/(R*T1)//The density of the air in kg/m^3
A=(3.141/4)*((Dt^2)-(Dh^2))//Area of cross section of the fan in m^2
Ca=m/(d*A)//The axial velocity of air in m/s
pi=Ca/U//The flow coefficient
tb1tb2=psi/(2*pi)//The difference between tangent angles of rotor inlet and exit angles
b2=atand((1-(dPd/U^2))/pi)//The exit rotor angle in degree
b1=atand((tand(b2))+(tb1tb2))//The inlet rotor angle in degree
dP=d*dPd//The pressure developed in N/m^2
dH=(dP/(dw*g))*10^3//Pressure developed in mm of W.G

//output
printf('(a)The overall efficiency is %3.3f\n,(b)The power required by the fan is %3.2f W\n(c)The flow coefficient is %3.2f\n(d)\n    (1)The rotor inlet angle is %3.2f degree\n    (2)The rotor exit angle is %3.2f degree\n(e)The pressure developed is %3.2f mm of W.G',no,P,pi,b1,b2,dH)
