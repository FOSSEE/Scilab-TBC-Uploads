clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=0.05//Armature circuit resistance in Ohm
L=0.85e-3//Inductance in mH
N=750//Motor speed in Rpm
V=220//Rated voltage of motor in Volts
a=60//firing angle in Degree
La=0.75e-3//External Inductance in mH
I=175 //motor current in Amp
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
N1=600 //Speed in Rpm
Eb1=(N1/N)*Eb//Back emf in Volts
//By trial and error method
b=201.45//Bita in Degree
Va=((Vm*1.414)*(cosd(a)-cosd(b))+(%pi+(a-b)*(%pi/180))*(Eb1))*(1/%pi) //Armature voltage in Volts
Ia=(Va-Eb1)/Ra //Armature current in Amp
T=K*Ia//Torque in N-m

//La=2.85 mH
N2=-400
a1=120
P1=atand((2*%pi*f*La)/Ra) // In Degree
Cot_P1=1/(tand(P1))
Eb2=(N2/N)*Eb//Back emf in Volts
Z1=sqrt((Ra^2)+((2*%pi*f*La)^2)) //Impedance In Ohm
AA1=(Ra*Vm*1.414)/(K*Z1)
A1=exp(-%pi*Cot_P1)
Wmc1=AA1*sind(a1-P1)*((1+A1)/(A1-1))//Critical Speed in rad/Sec
Wrpm1=(Wmc1*60)/(2*%pi) //speed in rpm
//By trial and error method
b1=297.5//Bita in Degree
Va1=((Vm*1.414)*(cosd(a1)-cosd(b1))+(%pi+(a1-b1)*(%pi/180))*(Eb2))*(1/%pi) //Armature voltage in Volts
Ia1=(Va1-Eb2)/Ra //Armature current in Amp
T1=K*Ia1//Torque in N-m

//Since the motor speed (-600 rpm) is less than critical speed (-409.17 Rpm) the drive's opertion is continuous condition
N3=-600
Va2=(2*1.414*Vm)*(cosd(a1))*(1/%pi)
Eb3=(N3/N)*Eb//Back emf in Volts
Ia2=(Va2-Eb3)/Ra //Armature current in Amp
T2=K*Ia2//Torque in N-m

//Results
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)
printf('\n\n The motor Torque =%0.1f N-m \n\n',T1)
printf('\n\n The motor Torque =%0.1f N-m \n\n',T2)
//The answers vary due to round off error
