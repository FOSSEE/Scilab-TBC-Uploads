clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=0.25//Combined Field and Armature circuit resistance in Ohm
N=1000 //Motor speed in Rpm
V=210//Rated voltage of motor in Volts
a=30//firing angle in Degree
Kaf=0.03 //Constant in N-m/A^2
Kres=0.075 //Constant in V-s/Rad

//Solution
//For semi-converter controlled Dc Drive
W=(2*%pi*N)/60 //angular speed in Rad/sec
Ia=(((Vm*1.414)/%pi)*(1+cosd(a))-(Kres*W))*(1/(Ra+Kaf*W))//Armature current in Amp
T=Kaf*(Ia)^2//Torque in N-m
Va=(Vm*1.414)*(1+cosd(a))*(1/%pi)//Average voltage in VoltsI
Irms=Ia*((180-a)/180)^(1/2)//RMS Current in Amp
Pa=Va*Ia //Power in Watt
Pi=Vm*Irms //Input power in Watt
Pf=(Pa/Pi)//Power Factor in Lag

//Results
printf('\n\n The motor Torque =%0.1f N-m \n\n',T)
printf('\n\n The motor Current =%0.1f Amp \n\n',Irms)
printf('\n\n The Supply Power Factor =%0.1f Lag \n\n',Pf)

