clc
clear

//input
i=10;//total current taken by two-branch parallel circuit in amperes
a=37*(%pi/180);//phase angle by which current lags by on the voltage in degrees
v=100;//voltage supply in volts
f=50;//frequency of supply in hertz
g1=0.03;//conductance of first branch in siemens
b1=0.04;//inductive susceptance of first branch in siemens

//calculations
gt=(i*cos(a))/v;//total conductance in siemens
bt=(i*sin(a))/v;//total susceptance in siemens
g2=gt-g1;//conductance of second branch in siemens
b2=bt-b1;//susceptance of second branch in siemens
y2=((g2^2)+(b2^2))^0.5;//admittance of second branch
r2=g2/(y2^2);//resistance of second branch in ohms
x2=b2/(y2^2);//reactacne of second coil in ohms
l2=(1000*x2)/(2*%pi*f);//inductance of second coil in millihenry

//output
mprintf('the resistance and inductance of second branch are %3.2f ohm and %3.2f mH',r2,l2)
