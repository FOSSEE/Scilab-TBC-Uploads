clc 
//variable initialization
p=4 //number of poles
f=50 //frequency in Hz
T1=40 // Torque in N-m
s=0.04 //Average slip
T=35 //Torque in N-m
N0=1250

//solution
Tav=35 //average torque in N-m
Ns=1500 //synchronous speed in rpm
N1=(1-s)*Ns
N2=sqrt(((Tav/T1)*(N1)^2))
T2=T1*(N0^2)/(N1^2)
Tratio=((Tav-T2)/(T1-Tav))
printf('\n\n The Average Torque=%0.1f N-m\n\n',Tav)
printf('\n\n The Speed=%0.1f rpm\n\n',N2)
printf('\n\n The required ratio of torque=%0.1f\n\n',Tratio)
