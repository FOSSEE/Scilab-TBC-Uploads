clc
//variable initialization
Pout=50 //output of induction motor in kilowatt
Vm=420 //input of motor in volt
F0=50 //supply frequency in hrtz
F1=58 // frequency in hrtz
N1=1475 //speed of motor in rpm
P=4 //number of poles 
Rs=0.4 //resistance of stator in ohm
Rr=0.21 //resistance of rotor in ohm
Xs=0.95 //reactance of stator in ohm
Xr=0.85 //reactance of rotor in ohm
Xm=32 //reactance of motor in ohm

//Solution
Vp=Vm/sqrt(3)
K=F1/F0
W0=2*%pi*F0
W=W0*K
Sm=Rr/(K*(Xs+Xr))
Ws=2*K*W0/P
Wm=Ws*(1-Sm)
N=Wm*60/(2*%pi)
Tdm1=(3*2*(Vp^2))/(2*(K^2)*W0*(Xs+Xr))
printf('\n\n The Slip at maximum torque=%0.1f\n\n',Sm)
printf('\n\n The Speed at maximum torque=%0.1f rpm\n\n',N)//The answers vary due to round off error
printf('\n\n The Breakdown torque=%0.1f N-m\n\n',Tdm1)
