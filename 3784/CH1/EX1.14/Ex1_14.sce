clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=0.75//Armature circuit resistance in Ohm
I=8 //Armature current in Amp
Nr=1200 //Motor speed in Rpm
Va=220//Rated voltage of motor in Volts
a=45//firing angle in Degree
T=8 //Motor torque in N-m
Nr1=800 //Speed in Rpm


//Solution
N=(Nr*2*%pi)/60 //Speed in Rad/sec
Kaf=(Va-I*Ra)/N //Motor Constant
//(A) For torque of 8 N-m
Ia=T/Kaf //Armature Current in Amp
V=(2*Vm*1.414)*cosd(a)*(1/%pi)//Average voltage in Volts
W=(V-Ia*Ra)/Kaf //Angular speed in Rad/sec
N=(W*60)/(2*%pi) //Speed in Rpm
//(B) a=45 Degree
N1=(Nr1*2*%pi)/60 //Speed in Rad/sec
Ia1=(V-Kaf*N1)/Ra //armature current in amp
T1=Kaf*Ia1 //Torque in N-m

//Results
printf('\n\n The motor Speed  =%0.1f RPM \n\n',N)
printf('\n\n The motor Torque=%0.1f N-m \n\n',T1)
//The answers vary due to round off error
