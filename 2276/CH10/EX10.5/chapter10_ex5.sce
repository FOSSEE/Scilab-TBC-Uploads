clc
clear

//input
p=2;//number of poles
v=415;//3 phase supply voltage in volts 
n=3;//number of phases
x=0.6;//reactance of phase in ohms
f=50;//supply ferquency in hertz
e=0.08;//resultant e.m.f. is 0.08of supply voltage

//calculations
e1=(e*v)/(3^0.5);//resultant e.m.f. per phase in volts
i=e1/x;//current per phase in current
il=i;//line current in amperes
phi=(180/%pi)*atan(e);//load angle in degrees
the=(180-phi)/p;
PHI=cos(atan(e));//power factor
inp=(3^0.5)*v*PHI*il;//power input in watts
t=inp/(2*%pi*(f/(p/2)));//torque in newton meter

//output
mprintf('the total torque produced is %3.0f Nm',t)
