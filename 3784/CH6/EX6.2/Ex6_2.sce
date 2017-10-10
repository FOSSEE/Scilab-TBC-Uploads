clc
//variable initialization
Pout=50 //output of induction motor in kilowatt
Vm=400 //input of motor in volt
F0=50 //supply frequency in hrtz
N1=1470 //speed of motor in rpm
P=4 //number of pole 
Rs=0.42 //resistance of stator in ohm
Rr=0.23 //resistance of rotor in ohm
Xs=0.95 //reactance of stator in ohm
Xr=0.85 //reactance of rotor in ohm
Xm=28 //reactance of motor in ohm
Sm=0.12 //slip of motor
//Solution
Vs=Vm/sqrt(3)
W0=2*%pi*F0
K=Rr/(Sm*(Xs+Xr))
F=K*F0//Supply Frequency
Tdm=3*P*Vs^2/(2*(K^2)*W0(Xs+Xr))
Ws=(K*W0*2)/(P)
Wm=Ws*(1-Sm)
N2=Wm*60/(2*%pi)
printf('\n\n Supply Frequency=%0.1f Hz\n\n',F)
printf('\n\n The Breakdown Torque=%0.1f N-m\n\n',Tdm)
printf('\n\n The Speed at maximum torque=%0.1f rpm\n\n',N2)
