
//calculate the value of current
R=10;//ohms
L=0.02;//henry
V=250;//volt
f=50;//hertz
X=(2*%pi*f*L)
Z=sqrt(R^2+X^2)
I=V/Z
coso=R/Z
o=acosd(coso)
disp('phase angle='+string(o)+'degree',  'current flowing through coil='+string(I)+'amp')
