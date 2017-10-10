clc
// Variable Initialization 
Vm=240//Supply Voltage in Volts
Ra=0.9//Combined Field and Armature circuit resistance in Ohm
N=900 //Motor speed in Rpm
V=220//Rated voltage of motor in Volts
a=45//firing angle in Degree
Kaf=0.035 //Constant in N-m/A^2

//Solution
//For semi-converter controlled Dc Drive
Va=(Vm*1.414)*(1+cosd(a))*(1/%pi)//Average voltage in Volts
W=(2*%pi*N)/60 //angular speed in Rad/sec
Ia=Va/(Ra+W*Kaf)//Current in Amp
T=Kaf*(Ia)^2//Torque in N-m

//Results
printf('\n\n The motor Current =%0.1f Amp \n\n',Ia)
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)
