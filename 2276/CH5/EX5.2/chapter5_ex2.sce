clc
clear

//input
r=25;//resistance of a non inductive resistor in ohms
rl=10;//resistance of the inductor
l=0.06;//inductance of the inductor in henry
//non inductive resistor and resistive inductor are connected in parallel
v=230;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
i1=v/r;//current in resistive branch in amperes
i2=v/(((rl*rl)+((2*%pi*f*l)^2))^0.5);//current is reactive-resistive branch in amperes
phi=acos(rl/(2*%pi*f*l));//phase angle in radians
it=i1+(i2*cos(phi));//total in-phase component in amperes
iq=i2*sin(phi);//total quadrature component in amperes
I=((it*it)+(iq*iq))^0.5;//resultant current in amperes
phit=(180/%pi)*acos(it/I);//phase angle in degrees

//output
mprintf('the total current is %3.1f A lagging by %3.0f degrees',I,phit)
