clc
clear

//input
zl=20;//impedance of the inductor in ohms
pf=0.45;//lagging power factor 
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
i=v/zl;//current taken by the inductor in amperes
p=v*i*pf;//true power in the circuit in watts
pa=v*i;//apparent power in VA
pr=v*i*sin(acos(pf));//reactive power in var
r=p/(i*i);//resistance in ohms
xl=((zl^2)-(r^2))^0.5;//reactance in ohms
l=(xl*1000)/(2*%pi*f);//inductance in millihenry

//output
mprintf('the wattmeter will read %3.0f W \n the apparent and the reactive powers are %3.0f VA and %3.0f var respectively \n the inductance of the inductor is %3.0f mH',p,pa,pr,l)
