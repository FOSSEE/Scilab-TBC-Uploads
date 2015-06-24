
//determine the value of capacitance
V1=100;//volts
V=250;//volts
f=50;//hertz
P=500;//watt
I=P/V;
V2=sqrt(V^2-V1^2);//volts
Xc=V2/I;
C=1/(2*%pi*f*Xc);
disp('determine the value of capacitance='+string(C)+'farad');
