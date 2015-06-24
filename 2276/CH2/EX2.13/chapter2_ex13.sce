clc
clear

//input
s=1;//side of square piece of wood which is clamped between two mettalic plates in meters
t=0.005;//thickness of square piece of wood which is clamped between two mettalic plates in meters
pd=20;//applied potential difference in volts
f=25000000;//supply frequency in hertz
er=4;//relative permittivity of the wood
theta=0.2// loss angle in radians
T=10;//time in minutes
e0=8.85*(10^-12);//absolute permittivity

//calculations
P=(pd*pd*2*%pi*f*e0*er*s*s*theta)/t;// power loss in watts
E=P*60*T;// energy dissipated in ten minutes in joules

//output
mprintf('the energy dissipated in the wood in 10 min is %3.10f J',E)
