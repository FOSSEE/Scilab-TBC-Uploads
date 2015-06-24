clc
clear

//input
r1=10;//resistance of branch 1 in ohms
l1=0.08;//inductance of branch 1 in henry
r2=20;//resistance of branch 2 in ohms
c2=150*(10^-6);//capacitance of branch 2 in farad
//branch 1 and 2 are in parallel
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
xl=2*%pi*f*l1;//reactance of branch 1 in ohms
z1=r1+(%i*xl);//impedance of branch 1 in ohms
y1=1/z1;//admittance of branch 1 in mho
x2=1/(2*%pi*f*c2);//reactane of branch 2 in ohms
z2=r2-(%i*x2);//impedance of branch 2
y2=1/z2;//admittance of branch 2 in mho
yt=y1+y2;//total admittance in mho
it=v*yt;//supply current in amperes
I=(((real(it))^2)+((imag(it))^2))^0.5;//current magnitude in amperes

//output
mprintf('the current taken from the supply is %3.2f A',I)
