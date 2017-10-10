clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=2//Combined Field and Armature circuit resistance in Ohm
Kaf=0.23 //Constant in H
TL=20 //Load Torque in N-m
a=65//firing angle in Degree

//Solution
Ia=(TL/Kaf)^(1/2)//Average Armature current in Amp
V=(2*Vm*1.414)*cosd(a)*(1/%pi)//Average voltage in Volts
W=(V-Ia*Ra)/(Kaf*Ia) //Angular speed in Rad/sec
N=(W*60)/(2*%pi) //Speed in Rpm

//Results
printf('\n\n The motor Average Armature Current =%0.1f Amp \n\n',Ia)
printf('\n\n The motor Average Speed =%0.1f RPM \n\n',N)//The answers vary due to round off error
