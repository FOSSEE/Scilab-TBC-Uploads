clc 
// variable initiallitation
T1=50 //torque in N-m
s=0.3 //slip
p=4 //number of poles
f=50 //frequency in Hz
V=400 //supply voltage in volts
Toff=poly(0,'Toff')
Ton=0.4*Toff
//solution
Tratio=0.4
Ns=1500 //synchronous speed in rpm
N1=Ns*(1-s)
T2=40 //torque in N-m
N2=sqrt((T2/T1)*(Ns)^2)
Tav=((T1*Ton+T2*Toff)/(Ton+Toff))
disp(Tav,'The Average Torque Developed')
Tav=60/1.4
printf('\n\n The Average Torque Developed=%0.1f N-m\n\n',Tav)
