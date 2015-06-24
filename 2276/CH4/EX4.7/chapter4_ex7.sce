clc
clear

//input
r0=15;//resisance added in series wiht an inductor and capacitor in ohms
rl=5;//resistance of the inductor in ohms
l=0.03;//inductance of the inductor in henry
c=250*(10^-6);//capacitance in farad
//i=14.5sin(314t) is the given current expression
w=314;//from the current expression
im=14.5;//from the current expression

//calculations
xl=w*l;//reactance of coil in ohms
xc=1/(w*c);//reactance of capacitor in ohms
r=r0+rl;//total resistance in ohms
R=xc-xl;//total reactance in ohms
z=((r^2)+(R^2))^0.5;//impedance in ohms
vm=im*z;//maximum voltage in volts
phi=acos(r/z);//phase angle in radians

//output
mprintf('the supply voltage will be V= %3.0f sin((%3.0f t)- %3.3f)',vm,w,phi)
