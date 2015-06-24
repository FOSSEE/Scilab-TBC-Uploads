clc
clear

//input
//all values refered to primary and from given equivalent circuit 
v=240;//supply voltage in volts
r0=0.25;//resistance in ohms
x0=0.4;//reactance in ohms
rl=7.75;//load resistance in ohms
xl=5.6;//load reactance in ohms
n=5;//turns ratio of the transformer

//calculations
rt=r0+rl;//total resistance of the circuit in ohms
xt=x0+xl;//total reactance of the circuit in ohms
zt=((rt^2)+(xt^2))^0.5;//total impedance of transformer and the load in ohms
Ip=v/zt;//current in amperes
zl=((rl^2)+(xl^2))^0.5;//impedance of load in ohms
d=Ip*zl;//voltage drop across referred load impedance in volts
vs=n*d;//secondary terminal voltage in volts

//output
mprintf('the secondary terminal voltage is %3.0f V',vs)
