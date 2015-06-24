clc
//Chapter5
//Ex_11
//Given
//part(a)
h=6.63*10^-34 //in Js
c=3*10^8 // in m/s
e=1.6*10^-19 // in coulombs
ue=0.034 //in m2/V/s
uh=0.0018 //in m2/V/s
t=1*10^-3 // in seconds
L=1*10^-3 //in m
D=0.1*10^-3 //in m
W=1*10^-3 //in m
I=1// mW/cm^2
I=I*10^-3*10^4 // conversion of units to W/m^2
n=1 //quantum efficiency
lambda=450*10^-9 // in m
V=50 // in volts
//part(a)
A=L*W //in m3
EHP_ph=(A*n*I*lambda)/(h*c)
disp(EHP_ph,"No.of EHP/s generated per second is")
//part(b)
delta_sigma=e*n*I*lambda*t*(ue+uh)/(h*c*D)
disp(delta_sigma,"Photo conductivity of the sample in ohm^-1 m^-1 is")
//part(c)
A=0.1*10^-6 //m2
E=V/W
delta_J=E*delta_sigma
delta_I=A*delta_J
disp(delta_I*10^3,"Photocurrent produced in mA is")
