clc
//Chapter2
//Ex_2.16
//Given
//at f=10MHz
a=10^-3 //in m
f=10*10^6 //in Hz
w=2*%pi*f
sigma_dc=5.9*10^7 // in m^-1
u=1.257*10^-6 //in Wb/A/m
delta=1/sqrt(0.5*w*sigma_dc*u)
//let r=r_ac/r_dc=a/(2*delta)
r=a/(2*delta)
disp(r,"Change in dc resistance of a copper wire at 10MHz  is")
//part(b)
f=1*10^9 //in Hz
w=2*%pi*f
delta=1/sqrt(0.5*w*sigma_dc*u)
//let r=r_ac/r_dc=a/(2*delta)
r=a/(2*delta)
disp(r,"Change in dc resistance of a copper wire at 1GHz  is")
