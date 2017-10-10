clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=1.8//Armature circuit resistance in Ohm
L=32e-3//Inductance in mH
N=1200//Motor speed in Rpm
V=220//Rated voltage of motor in Volts
a=60//firing angle in Degree
I=15 //motor current in Amp
f=50 //source Frequency in Hz

//Solution
P=atand((2*%pi*f*L)/Ra) // In Degree
Z=sqrt((Ra^2)+((2*%pi*f*L)^2)) //Impedance In Ohm
Eb=V-(I*Ra) //back emf in Volts
w=(2*%pi*N)/60 //Angular Speed in rad/sec
K=Eb/w
Cot_P=1/(tand(P))
A=exp(-%pi*Cot_P)
AA=(Ra*Vm*1.414)/(K*Z)
Wmc=AA*sind(a-P)*((1+A)/(A-1))//Critical Speed in rad/Sec
Wrpm=(Wmc*60)/(2*%pi) //speed in rpm
//Since the motor Speed is greater than critical Value Wmc ,The drive is operating under discontinuous conduction
//At N=600 Rpm
N1=450 //Speed in Rpm
Eb1=(N1/N)*Eb//Back emf in Volts
//By trial and error method
b=239.4//Bita in Degree
Va=((Vm*1.414)*(cosd(a)-cosd(b))*(%pi+(a-b)*(%pi/180))*(Eb1))*(1/%pi) //Armature voltage in Volts
Ia=(Va-Eb1)/Ra //Armature current in Amp
T=K*Ia//Torque in N-m
//Since the motor Speed is greater than critical Value Wmc ,The drive is operating in discontinuous mode at 
N2=1500
Eb2=(N2/N)*Eb//Back emf in Volts
//By trial and error method
b1=172.2//Bita in Degree
Va1=((Vm*1.414)*(cosd(a)-cosd(b))*(%pi+(a-b)*(%pi/180))*(Eb2))*(1/%pi) //Wromg calculation in book they have taken value of beta as 17.2 instead of 172.2
Ia1=(Va1-Eb2)/Ra //Armature current in Amp
T1=K*Ia1//Torque in N-m

//Results
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)//The answers vary due to round off error
printf('\n\n The motor Torque =%0.1f N-m \n\n',T1)
//The answer provided in the textbook is wrong
