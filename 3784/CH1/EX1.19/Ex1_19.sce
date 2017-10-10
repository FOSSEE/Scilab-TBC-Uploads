clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=0.05//Armature circuit resistance in Ohm
La=3e-3//Inductance in mH
N=750//Motor speed in Rpm
V=220//Rated voltage of motor in Volts
a=60//firing angle in Degree
I=175 //motor current in Amp
f=50 //source Frequency in Hz

//La=2.85 mH
N2=-400
a1=120
P1=atand((2*%pi*f*La)/Ra) // In Degree
Eb=V-(I*Ra) //back emf in Volts
w=(2*%pi*N)/60 //Angular Speed in rad/sec
K=Eb/w
Cot_P1=1/(tand(P1))
Eb1=(N2/N)*Eb//Back emf in Volts
Z1=sqrt((Ra^2)+((2*%pi*f*La)^2)) //Impedance In Ohm
AA1=(Ra*Vm*1.414)/(K*Z1)
A1=exp(-%pi*Cot_P1)
Wmc1=AA1*sind(a1-P1)*((1+A1)/(A1-1))//Critical Speed in rad/Sec
Wrpm1=(Wmc1*60)/(2*%pi) //speed in rpm
Eb2=(Wrpm1*Eb)/N
a2=150
Va=(2*1.414*Vm)*(cosd(a2))*(1/%pi)
Ia=(Va-Eb2)/Ra
T=K*Ia//Torque in N-m
//As the torque of 400 N-m is greater than T ,hence the opertion is in Continuous conduction mode
T1=400
Ia1=T1/K
Eb3=Va-(Ia1*Ra)
Ns=(Eb3*N)/Eb
//As the torque of 400 N-m is less than T ,hence the opertion is in Discontinuous conduction mode
Z=0.2716
q=V*1.414/Z
//nothing is solved in textbook using numericals
//By Trial and error method beta is calculated
b=233.240

//Results
printf('\n\n The motor Speed =%0.1f rpm \n\n',Ns)
