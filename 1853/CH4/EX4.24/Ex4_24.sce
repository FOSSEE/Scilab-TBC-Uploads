
//determine the supply voltage 
V=200;//ohms 
L=0.4;//henry
I=0.5;//ampss
f=50;//hertz
Z=V/I
X=2*%pi*f*L
R=sqrt(Z^2+X^2)
disp('Resistance = '+string(R)+'ohms')
