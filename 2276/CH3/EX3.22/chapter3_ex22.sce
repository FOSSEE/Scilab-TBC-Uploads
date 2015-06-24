clc
clear

//input
v=250;//voltage of the series motor in volts
ra=0.25;//armature resistance of the series motor in ohms
rf=0.2;//field resistance of the series motor in ohms
i=60;//current taken by the motor in amperes
w=90;//speed of the motor in rad/s
r0=0.4;//resistance added in parallel with the field in ohms

//calculations
//it is assumed that flux is proportoinal to the field current and load is constant
E1=v-(i*(rf+ra));//motor e.m.f. in volts
I=i/((r0/(r0+rf))^0.5);//current in amperes
E2=v-(I*ra)-((I*rf)*(r0/(r0+rf)));//new motor e.m.f. in volts
W=(E2/E1)*(i/I)*((r0+rf)/r0)*w;//increased speed of the motor in rad/s

//output
mprintf('with resistor connected the speed of the motor will increase to %3.0f rad/s',W)
