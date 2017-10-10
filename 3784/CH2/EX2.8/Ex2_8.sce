clc
//Variable Initialisation
Vs=220//Supply Voltage in Volts
N=600//Rotor Speed in rpm
Ra=0.4//Armature Resistance in ohm
Rf=150//Field Resistance in ohm
af=0//Firing Angle for Maximum field current
aa=0//Firing Angle for maximum Armature current
N2=1200//Speed in rpm
T=120//Torque in N-m
K=1.4//Motor voltage Constant
//Solution
Vm=Vs/sqrt(3)
W=2*%pi*N/60
Vf1=3*sqrt(3)*sqrt(2)*Vm*cosd(af)/%pi
If1=Vf1/Rf//Field Current in Amp
Ia1=T/(K*If1)
Eb1=K*If1*W
Va1=Eb1+(Ia1*Ra)
aa1=acosd(Va1*%pi/(3*sqrt(3)*sqrt(2)*Vm))
Va2=3*sqrt(3)*sqrt(2)*Vm*cosd(aa)/%pi
Eb2=Va2-(Ia1*Ra)
N3=Eb2/(K*If1)//Speed in rad/s
N3rpm=N3*60/(2*%pi)//Speed in Rpm
W2=N2*2*%pi/60
If2=Eb2/(K*W2)
Vf2=If2*Rf
af1=acosd(Vf2*%pi/(3*sqrt(3)*sqrt(2)*Vm))
printf('\n\n The Firing Angle=%0.1f\n\n',aa1)
printf('\n\n The Field Current=%0.1f Amp\n\n',N3rpm)
printf('\n\n The Field Current=%0.1f Amp\n\n',af1)
