clc
// Variable Initialization 
Vm=230 //Supply Voltage in Volts
N=650//speed of motor in RPM
I=100//Motor curent in Ampere
Ra=0.08 //Armature circuit resistance in Ohm
L=8e-3 //Armature circuit Inductance in mH
V=230 //Ac Source voltage in Volts
f=50 //source Frequency in Hz
a=60
aa=(60*%pi)/180 //in rad/sec
N2=200

//Solution
P=atand((2*%pi*f*L)/Ra) // In Degree
Cot_P=1/(tand(P))
A=exp(-%pi*Cot_P)
B=exp((-aa)*Cot_P)
Z=sqrt((Ra^2)+((2*%pi*f*L)^2)) //Impedance In Ohm
Eb=Vm-(I*Ra) //back emf in Volts
w=(2*%pi*N)/60 //Angular Speed in rad/sec
K=Eb/w
AA=(Ra*Vm*1.414)/(K*Z)
Wmc=AA*((sind(P)*B)-(sind(a-P)*A))*(1/(1-A)) //Critical Speed in rad/Sec 
Wrpm=(Wmc*60)/(2*%pi) //speed in rpm
//since the speed of 200 rpm is less than the critical speed ,the drive is operating under continuous conduction .Hence
Va=(V*1.414)*(1+cosd(a))*(1/%pi) //Armature voltage in volts
Ec=(N2*Eb)/N //Critical emf in Volts
T=K*(Va-Ec)*(1/Ra) //Critical Torque in N-m

//For 
a1=120
aa1=(120*%pi)/180 //in rad/sec
B1=exp((-aa1)*Cot_P)
Wmc1=AA*((sind(P)*B1)-(sind(a1-P)*A))*(1/(1-A)) //Critical Speed in rad/Sec 
Wrpm1=(Wmc*60)/(2*%pi) //speed in rpm
//since the motor speed of 200 RPM is greater than the critical speed the drive is operating under discontinuous condition for which
AA1=(Ra*Vm*1.414)/(Ec*Z)
e1=AA1*((sind(P)*A)-(sind(a1-P)*B1))+B1
b=(log(e1))/Cot_P
b=117.38
Va1=((Vm*1.41*(1+cosd(a1))+(%pi+((a1-b)*%pi/180))*Ec))/%pi//square root of 2 is rounded off as 1.4
T1=K*(Va1-Ec)/Ra //Critical Torque in N-m

//Results
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)
printf('\n\n The motor Torque=%0.1f N-m \n\n',T1)
//The answers vary due to round off error
