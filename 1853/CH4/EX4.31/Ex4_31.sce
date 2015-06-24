
//calculate the value of RESISTANCE AND CAPACITANCE 
I=2.5;//amps
V=150;//volts
f=50;//hetz
Z=V/I;
P=100;//watt..power
R=P/(I*I)
Xc=sqrt(Z^2-R^2)
C=1/(2*3.14*f*Xc);// capacitance
disp('find tha value of capacitance='+string(C)+'farad');

