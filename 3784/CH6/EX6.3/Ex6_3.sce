clc
//variable initialization
Pout=50 //output of induction motor in kilowatt
Vm=400 //input of motor in volt
F0=50 //supply frequency in hrtz
N1=1475 //speed of motor in rpm
P=4 //number of poles 
Rs=0.42 //resistance of stator in ohm
Rr=0.23 //resistance of rotor in ohm
Xs=0.95 //reactance of stator in ohm
Xr=0.85 //reactance of rotor in ohm
Xm=30 //reactance of motor in ohm
Tdm=225 //Breakdown Torque In N-m
K=poly(0,'K')




//Solution
W0=2*%pi*F0
Vp=Vm/sqrt(3)
K=sqrt((3*2*(Vp^2))/(2*Tdm*W0*(Xs+Xr)))
W1=K*W0
F1=W1/(2*%pi)
Sm=Rr/(K*(Xs+Xr))
Ws=2*K*W0/(P)
Wm=Ws*(1-Sm)
N=Wm*60/(2*%pi)
printf('\n\n The Supply Frequency=%0.1f Hz\n\n',F1)
printf('\n\n The slip at maximum torque=%0.1f\n\n',Sm)
printf('\n\n The speed at maximum torque=%0.1f rpm\n\n',N)
