clc
//Chapter 7:Conditions for Oscillation
//example 7.8 page no 270
//given
fa=5.7*10^6//parallel antiresonant frequency
C1=21*10^-15
Co=37.1*10^-12//here 32pF is parallel with 5.1pF so they get added
CL=22*10^-12
f_a=fa*((1+C1/(2*(Co+CL)))/(1+C1/(2*Co)))//new parallel antiresonant frequency
r1=25
Rp=r1*(1+((r1*2*%pi*f_a*(Co+CL))^-1)^2)//equivalent parallel resistance
mprintf('the new parallel antiresonant frequency is %f MHz \n the equivalent parallel resistance is %f Kohm',f_a*1e-6,Rp*1e-3)
