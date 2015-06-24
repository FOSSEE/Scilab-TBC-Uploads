
//determine the supply voltage 
R=15;//ohms 
L=0.15;//henry
I=20;//ampss
f=50;//hertz
X=2*%pi*50*0.15
Z=sqrt(R^2+X^2)
V=I*Z
disp('supply voltage = '+string(V)+'volts');
