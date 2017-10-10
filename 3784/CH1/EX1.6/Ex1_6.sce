clc
// Variable Initialization 
Vm=200 //Supply Voltage in Volts
N=1000 //speed of motor in RPM
I=13 //Motor current in Ampere
Ra=3 //Armature circuit resistance in Ohm
L=100e-3 //Armature circuit Inductance in mH
V=230 //Ac Source voltage in Volts
f=50 //source Frequency in Hz
a=30
aa=(30*%pi)/180 //in rad/sec
N2=400
//Solution
P=atand((2*%pi*f*L)/Ra) // In Degree
Cot_P=1/(tand(P))
A=exp(-%pi*Cot_P)
B=exp((-aa)*Cot_P)
Z=sqrt((Ra^(2))+((2*%pi*f*L)^2)) //Impedance In Ohm
Eb=Vm-(I*Ra) //back emf in Volts
w=(2*%pi*N)/60 //Angular Speed in rad/sec
K=Eb/w
AA=(Ra*V*1.41)/(K*Z)
Wmc=AA*((sind(P)*B)-(sind(a-P)*A))*(1/(1-A)) //Critical Speed in rad/Sec
Wrpm=(Wmc*60)/(2*%pi) //speed in rpm
//As the motor speed of 400 rpm is less than the critical speed ,the drive is operating under continuous conduction mode
af=30 //firing angle in Degree
Va=(V*1.414)*(1+cosd(af))*(1/%pi) //Armature voltage in volts
//At 400 RPM
Eb1=Eb*(N2/N) //This Value Is Wrongly Calculated in Textbook
T=K*(Va-Eb1)*(1/Ra) //Torque in N-m
//Motor back emf for critical speed equal to 1149.67 rpm
Ec=(Wrpm*Eb)/N //critical emf in volts
Tc=K*(Va-Ec)*(1/Ra) //Critical Torque in N-m
//Since the motor torque of 70 N-m is greater than the critical torque Tc ,the drive is operating in continuous conduction
Ia=T/K //Armature current in Amp
Eb2=Va-(Ia*Ra) // Back emf in Volts
Nm=(Eb2*N)/161 //Answer changed due wrong value is taken in book of Eb1

//Results
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)
printf('\n\n The motor Speed =%0.1f RPM \n\n',Nm)
//The answer provided in the textbook is wrong
