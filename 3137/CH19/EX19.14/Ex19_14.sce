//Initilization of variables
ds=2 //in
L=15 //in
Wf1=300 //lb
k1=6 //in
Wf2=100 //lb
k2=4 //in
G=12*10^6 //Pa
g=386 //in/s^2
//Calculations
//Moment of inertia of flywheel
Jf=(Wf1/g)*k1^2 //lb-s^2-in
//Moment of inertia of the rotor
Jr=(Wf2/g)*k2^2 //lb-s^2-in
//Moment of inertia of the shaft cross section
J=(1/32)*%pi*ds^4 //in^4
//Frequency
f=(1/(%pi*2))*(sqrt((J*G*(Jf+Jr))/(L*Jf*Jr))) //cps
//result
clc
printf('The natural frequency of the system is %f cps',f)
