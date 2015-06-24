clc
clear

//input
p=6;//number of poles
n=3;//number of phases
f=50;//frequency in hertz
s=0.03;//slip in per units

//calculations
w=(2*%pi*f*60)/(n*2*%pi);//synchronous speed in rev/min
ws=s*w;//slip speed in rev/min
wr=w-ws;//rotor speed in rev/min
fs=(ws*n)/60;//frequency of rotor currents in amperes

//output
mprintf('the rotor speed will be %3.0f rev/min and the frequency of rotor currents will be%3.1f Hz',wr,fs)
