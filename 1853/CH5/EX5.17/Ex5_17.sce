
//determine the value of slip nd speed of motor
P=6
f=50
Ns=120*f/P
f1=1.5
s=f1/f
N=Ns*(1-s)
disp('speed of motor='+string(N)+'RPM')
