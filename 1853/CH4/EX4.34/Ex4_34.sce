
//determine the current also V1 nd V2
V=250
f=50
R1=10
L1=0.15
C1=10e-6
X1=2*%pi*f*L1
Xc1=1/(2*%pi*f*C1)
R2=8
L2=0.25
X2=2*%pi*f*L2
Z=sqrt((R1+R2)^2+[(X1+X2)-Xc1]^2)
I=V/Z
Z1=sqrt(R1^2+(X1-Xc1)^2)
V1=I*Z1
Z2=sqrt(R2^2+X2^2)
V2=I*Z2
disp('value of current='+string(I)+'amps'  ,  'v1='+string(V1)+'volts',  'V2='+string(V2)+'volts')
