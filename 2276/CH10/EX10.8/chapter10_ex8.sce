clc
clear

//input
p=4;//number of poles
f=50;//supply frequency in hertz
n=3;//number of phases
w=1440;//speed in rev/min
sl=1.5;//stator losses in kW
fl=1.2;//friction losses in kW
inp=60;//input to motor in kW

//calculations
N=(inp*f)/(p/2);//synchronous speed in rev/min
ns=N-w;//slip speed in rev/min
s=ns/N;//slip in per units
rinp=inp-sl;//rotor input in kW
rc=s*rinp;//rotor copper losses in kW
tr=(rinp*1000)/((N*2*%pi)/60);//rotor torque in newton meter
rout=rinp-rc;//rotor output in kW
mout=rout-fl;//motor output in kW
eff=mout/inp;//efficiency of rotor in per unit

//output
mprintf('the slip is %3.2f p.u.:the rotor copper loss is %3.2f kW: the total torque is %3.0f Nm and the efficiency is %3.3f p.u.',s,rc,tr,eff)
