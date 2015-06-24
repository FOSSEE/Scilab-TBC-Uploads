clc
clear

//input
vp=440;//primary voltage in volts
vs=240;//secondary voltage in volts
f=50;//supply voltage in hertz
i0=0.5;//no load current in amperes
pf=0.3;//lagging power factor

//calculations
ii=i0*pf;//in phase component in amperes
r0=vp/(ii*1000);//resistance in ohms
iq=((i0^2)-(ii^2))^0.5;//quadrature component in amperes
x0=vp/iq;//reactance in ohms
l0=x0/(2*%pi*f);//inductance in henry

//output
mprintf('the transformer on load may be represented by %3.2fkOhms resistance in parallel with a pure inductance of %3.2fH',r0,l0)
