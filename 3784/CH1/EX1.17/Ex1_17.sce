clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=2//Armature circuit resistance in Ohm
L=50e-3//Inductance in mH
N=1500//Motor speed in Rpm
V=220//Rated voltage of motor in Volts
a=60//firing angle in Degree
a1=120//firing angle in Degree
I=10//motor current in Amp
f=50 //source Frequency in Hz

//Solution
P=atand((2*%pi*f*L)/Ra) // In Degree
Z=sqrt((Ra^2)+((2*%pi*f*L)^2)) //Impedance In Ohm
Eb=V-(I*Ra) //back emf in Volts
w=(2*%pi*N)/60 //Angular Speed in rad/sec
K=Eb/w//value obtain is 1.2732395 approximating to 1.27
K=1.27//Approximation of K as per book and our obtained value
//At No Load
Wo=(Vm*1.414)/K//Angular Speed in rad/sec(For 0<a<%pi/2)
No=Wo*(60/(2*%pi))//Speed in Rpm
Cot_P=1/(tand(P))
A=exp(-%pi*Cot_P)
AA=(Ra*Vm*1.414)/(K*Z)
Wmc=AA*sind(a-P)*((1+A)/(A-1))//Critical Speed in rad/Sec
Wrpm=(Wmc*60)/(2*%pi) //speed in rpm
Eb1=(Wrpm*Eb)/N
//By trial and error method
b=240.45//Beta in Degree
bx=249.45//Beta in Degree
Va=((Vm*1.414)*(cosd(a)-cosd(bx))+(%pi+(a-b)*(%pi/180))*(Eb1))*(1/%pi) //Armature voltage in Volts
Ia=(Va-Eb1)/Ra //Armature current in Amp
T=K*Ia//Torque in N-m

//At a1=120
Wmc1=AA*sind(a1-P)*((1+A)/(A-1))//Critical Speed in rad/Sec
Wrpm1=(Wmc1*60)/(2*%pi) //speed in rpm
Wo1=(Vm*1.414*sind(a1))/1.273//Angular Speed in rad/sec(For 0<a<%pi/2)&K=1.273
No1=Wo1*(60/(2*%pi))//Speed in Rpm
Eb2=(Wrpm1*Eb)/N
//By trial and error method
b1=217.2//Beta in Degree
Va1=((Vm*1.414)*(cosd(a1)-cosd(b1))-((%pi+((a1-b1)*(1/180))*%pi)*Eb2))*(1/%pi) //Armature voltage in Volts
Ia1=(Va1-Eb2)/Ra //Armature current in Amp
T1=K*Ia1//Torque in N-m

//Results
printf('\n\n The motor No load Speed =%0.1f RPM \n\n',No)
printf('\n\n The motor Critical Speed =%0.1f RPM \n\n',Wrpm)
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)
printf('\n\n The motor No load Speed =%0.1f RPM \n\n',No1)
printf('\n\n The motor Critical Speed =%0.1f RPM \n\n',Wrpm1)
printf('\n\n The motor Torque =%0.1f N-m \n\n',T1)
//The answers vary due to round off error
