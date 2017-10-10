clc
// Variable Initialization 
Vm=250//Supply Voltage in Volts
Ra=0.3//Combined Field and Armature circuit resistance in Ohm
N=900 //Motor speed in Rpm
V=220//Rated voltage of motor in Volts
a=30//firing angle in Degree
Kaf=0.03 //Constant in N-m/A^2
Kres=0.075 //Constant in V-s/Rad

//Solution
W=(2*%pi*N)/60 //angular speed in Rad/sec
Ia=(((Vm*1.414)/%pi)*(1+cosd(a))-(Kres*W))*(1/(Ra+Kaf*W))//Armature current in Amp
T=Kaf*(Ia)^2//Torque in N-m
I=(T/Kaf)^(1/2)//motor current in Amp
//The motor Terminal voltage would be given by the output voltage of the converter
Va=(Vm*1.414)*(1+cosd(a))*(1/%pi)//Output voltage in Volts

//Results
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)
printf('\n\n The motor Current =%0.1f Amp \n\n',I)
printf('\n\n The motor output voltage =%0.1f Volts\n\n',Va)
