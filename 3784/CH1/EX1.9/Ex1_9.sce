clc
// Variable Initialization 
Vm=230 //Supply Voltage in Volts
Ia=50//Motor Armature current in Ampere
Ra=0.25//Armature circuit resistance in Ohm
Rf=200 // Field circuit resistance in Ohm
f=50 //source Frequency in Hz
a=45 //Firing angle  in the armature  circuit in degree
Vd=1 //Brush contact drop V/brush
af=0 //Firing angle in the field circuit in degree
Kf=1.1 //Torque and voltage constant

//Solution
Vf=(2*Vm*1.414)*cosd(af)*(1/%pi) //Voltage in field circuit in Volts
//When a=45 degree
Va=(2*Vm*1.414)*cosd(a)*(1/%pi) //Voltage in Armature circuit in Volts
If=Vf/Rf //Field current in Amp.
T=Kf*Ia*If //Torque in N-m
Eb=Va-(Ia*Ra)-Vd*2 //Back emf in Volts
W=Eb/(Kf*If) //Angular speed in Rad/sec
N=W*60/(2*%pi) //Motor speed in RPM

//Results
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)
printf('\n\n The motor Speed=%0.1f RPM \n\n',N)
