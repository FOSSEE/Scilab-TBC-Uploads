clc
clear

//input
r=20;//resistance of coil in ohms
l=0.04;//inductance of coil in henry
v=240;//supply voltage in volts
f=50;//frequency of supply in hertz

//calculations
xl=2*%pi*f*l;//reactance of coil in ohms
z=((r^2)+(xl^2))^0.5;//impedance of coil in ohms
i=v/z;//current in amperes
cosp=r/z;//cosine of phase angle
Pavg=v*i*cosp;//average power in watts
pmax=v*i*(cosp+1);//maximum instantaneous power in watts

//ouput
mprintf('the average power and the maximum instantaneous power in the coil are %3.0f W and %3.0f W respectively',Pavg,pmax)
