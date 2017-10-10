clc
//Variable Initialization
Vm=320 //Input Voltage In Volts
Eb=100 //Back Emf In Volts
Ra=5 //Armature Resistance In Ohm
af=45 // Firing Angle Of SCR In Degree
N=1200 //Speed Of Motor In RPM

//Solution
Va=Vm* (1/%pi)* (1+cosd(af)) //Voltage Across Armature In volts
Ia=(Va-Eb)/Ra //Armature Current Amp
W=(2*%pi*N)/60 //Angular Speed In rad/Sec.
K=Eb/W //Voltage Constant In V-rad/Sec
T=K*Ia //Torque Of Motor In N-m

//Result
printf('\n\n The Armature Current=%0.1f Amp\n\n',Ia)
printf('\n\n The Motor Torque=%0.1f N-m\n\n',T)
//The answers vary due to round off error
