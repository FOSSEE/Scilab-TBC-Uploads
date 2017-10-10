clc
P=5e+6// power rating in Watts
Vl=11e+3// line voltage in Volts
f=50// frequency of motor in Hz
p1=0
N=6// no. of poles
Rs=0// resistance of motor in ohm
Xs=10// reactance of motor in ohm
If=60// rated field current in amp

//Solution
Vph=Vl/sqrt(3)//phase voltage in Volts
N1=750// speed of motor at rated motor current Is
p2=36.869898//p2=acosd(0.8)
Is=P/(sqrt(3)*Vl*cos(p1))
E=Vph-(Is*Xs*%i)
Ns=120*f/N// synchronous speed of motor
f1=N1*f/Ns// freaquency of motor while running at N1
Vph1=Vph*f1/(f)//phase voltage for speed N1 in V
Xs1=(N1/Ns)*Xs//reactance of motor at speed N1 in ohm
E2=Vph1-(Is*(cosd(p2)+%i*sind(p2))*(Xs1*%i))
E1=E*N1/Ns//in V
If1=abs(E2)*If/abs(E1)//field current at N1 in amp
P1=3*Vph1*Is*cosd(p2)//output power in kW
wm=N1*2*%pi/60//angular speed in rad/sec
T=P1/wm//torque in Nm
printf('\n\n The Field Current=%0.1f Amp\n\n',If1)
printf('\n\n The Torque for Rated Armature Current=%0.1f N-m\n\n',T)
//The answers vary due to round off error
