clc
clear

//input
r=32;//resistance connected in parallel with an inductor in ohms
v=240;//supply voltage in volts
f=50;//supply frequency in hertz
il=8;//current in inductor in amperes
it=14;//total current in amperes

//calculations
ir=v/r;//current in resistor in amperes
cosp=((it^2)-(ir^2)-(il^2))/(2*ir*il);//power factor
R=(v*cosp)/il;//resistance of inductor in ohms
xl=(v*sin(acos(cosp)))/il;//reactance in ohms
l=(xl*1000)/(2*%pi*f);//inductance in millihenry
p=il*il*R;//power loss in inductor in watts

//output
mprintf('the resistance and the inductance of the inductor are %3.2f ohms and %3.0f mH respectively and the power loss is %3.0f W',R,l,p)
