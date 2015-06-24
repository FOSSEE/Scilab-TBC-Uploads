clc
clear

//input
kva=10;//kVA rating of the transformer
vp=400;//voltage on primary side in volts
vs=230;//voltage on secondary side in volts
//short circuit test
ppd1=18;//primary p.d. in volts
ip1=25;//primary current in amperes
inp1=120;//power input in watts
//short circuit test
ppd2=400;//primary p.d. in volts
ip2=0.5;//primary current in amperes
inp2=70;//power input in watts

//calculations
zp=ppd1/ip1;//equivalent primary impedance in ohms
rp=inp1/(ip1^2);//equivalent resistance in ohms
xp=((zp^2)-(rp^2))^0.5;//equivalent leakage reactance in ohms
r0=(vp^2)/(1000*inp2);//resistance of parallel circuit
phi=sin(acos(inp2/(vp*ip2)));//sine of power factor
im=ip2*phi;//magnetizing current in amperes
x0=vp/im;//reactance in ohms

//output
mprintf('the equivalent circuit parameters are \n Rp=%3.3f ohms \n Xp=%3.3f ohms \n r0=%3.3f kilo ohms \n x0=%3.1f ohms',rp,xp,r0,x0)
