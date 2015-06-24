//Finding the Performance Parameter of an AC power supply with PWM control 
//Example 14.5(Page No-624) 
clc
clear
//given data
a=0.5//turns ratio
V1=100
R=2.5
p=4
Vs=V1
V2=a*V1
V0=V2
e=18//width of pulse
d=18*(%pi/180) //in radians
Vl=V0*sqrt(p*d/%pi)
Il=Vl/R
printf('RMS load current:%2.2f A\n',Il)
