clc
clear

//input
p=6;//number of poles
f=50;//frequency in hertz
n=3;//number of phases
t=160;//total torque in newton meter
fs=120;//slip frequency in cycles/min
tf=12;//torque lost in friction
sl=750;//stator losses in watts

//calculations
s=fs/(60*f);//slip in per unit
w=(2*%pi*f)/n;//speed of motor in rad/sec
wr=w*(1-s);//rotor speed in rad/sec
rinp=t*w;//rotor input in watts
rc=s*rinp;//rotor copper losses in watts
sinp=rinp+sl;//stator input in watts
Sinp=sinp/1000;//stator input in kilowatts
tout=t-tf;//output torque in newton meter
pout=tout*wr;//power output in watts
eff=pout/sinp;//efficiency in per unit

//output
mprintf('the rotor loss is %3.0fW, the input to the motor is %3.2f kW and the motor efficiency is %3.2f p.u.',rc,Sinp,eff)
