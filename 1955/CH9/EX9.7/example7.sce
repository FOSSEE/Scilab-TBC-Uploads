clc
clear
//input data
N=300//Running speed of the wheel in rpm
H=150//OPerating head of the wheel in m
dD=1/12//Ratio of nozzle diameter to wheel diameter
Cv=0.98//Velocity coefficient
UC1=0.46//Speed ratio
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3
n0=0.84//Overall efficiency

//calculations
C1=Cv*(2*g*H)^(1/2)//Velocity of jet in m/s
U=UC1*(2*g*H)^(1/2)//Velocity of the wheel in m/s
D=(60*U)/(3.14*N)//Diameter of the wheel in m
d=D*dD//Diameter of the jet in m
Q=(3.1415/4)*(d^2)*C1//Quantity of water required in m^3/s
Pa=dw*g*Q*H//Power available at the nozzle in kW
P=n0*Pa*10^-3//Power developed in kW
disp(U)
//output
printf('(a)Diameter of the wheel is %3.2f m\n(b)Diameter of the jet is %3.3f m\n(c)Quantity of water required is %3.3f m^3/s\n(d)Power developed is %3.1f kW',D,d,Q,P)
