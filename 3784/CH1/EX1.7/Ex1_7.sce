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
a1=120
aa1=(120*%pi)/180 //in rad/sec
N2=400
T=1000

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
//motor back emf for critical speed of 148 RPM
Ec=(Wrpm*Eb)/N //Critical emf in Volts
Va=(V*1.414)*(1+cosd(a))*(1/%pi) //Armature voltage in volts
Tc=K*(Va-Ec)*(1/Ra) //Critical Torque in N-m
//The check condition is
Ia=T/K //Armature current in Amp
Eb2=Va-(Ia*Ra) // Back emf in Volts
Nm=(Eb2*N)/Eb//Motor speed in Rpm

B1=exp((-aa1)*Cot_P)
Wmc1=AA*((sind(P)*B1)-(sind(a1-P)*A))*(1/(1-A)) //Critical Speed in rad/Sec
Wrpm1=(Wmc1*60)/(2*%pi) //speed in rpm
//motor back emf for critical speed of 154 RPM
Ec1=(Wrpm1*Eb)/N //Critical emf in Volts
Va1=(V*1.414)*(1+cosd(a1))*(1/%pi) //Armature voltage in volts
Tc1=K*(Va1-Ec1)*(1/Ra) //Critical Torque in N-m
//The check condition is
Ia1=-T/K //Armature current in Amp
Eb3=Va1-(Ia1*Ra) // Back emf in Volts
Nm1=(Eb3*N)/Eb//Motor speed in Rpm

//Results
printf('\n\n The motor Speed =%0.1f RPM \n\n',Nm)
printf('\n\n The motor Speed =%0.1f RPM \n\n',Nm1)
//The answers vary due to round off error(1st answer)

