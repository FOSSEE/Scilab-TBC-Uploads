clc
clear

//input
r1=10;//resistance of first coil in ohms
l1=0.05;//inductance of first coil in henry
v1=150;//limit of voltage drop across of first coil in volts
v=240;//supply a.c. voltage in volts
f=50;//frequency of supply in hertz
a=40;//angle by which current lags the combined circuit after adding another coil to the first coil in series in degrees

//calculations
R=2*%pi*f*l1;//reactance of first coil in ohms
z=((r1^2)+(R^2))^0.5;//impedance of the first coil in ohms
i=v1/z;//maximum safe current in amperes
Z=v/i;//total impedance in ohms
Rt=Z*cos(a*(%pi/180));//total resistance in ohms
r2=Rt-r1;//resistance of the second coil in ohms
xt=Z*sin(a*(%pi/180));//total reactance in ohms
x2=xt-R;//reactance of the second coil in ohms
l2=x2/(2*%pi*f);//inductance of the second coil in henry
L=l2*1000;//inductance of the second coil in millihenry

//output
mprintf('the second coil must have a resistance of %3.1f ohm and an inductance of %3.1f mH',r2,L)
