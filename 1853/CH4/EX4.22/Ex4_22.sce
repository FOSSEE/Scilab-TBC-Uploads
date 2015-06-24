
//find the inductance impd,curent,power factr,voltage.power
R=50;//ohms
L=0.5;//henry
V=200;//volt
f=50;//hertz
X=(2*%pi*f*L)
Z=sqrt(R^2+X^2)
I=V/Z
coso=R/Z
sino=R/Z
o=acosd(coso)
o1=asind(sino)
Vr=I*R
Vl=I*X
AP=V*I*coso
RP=V*I*sino
APP=V*I;
//disp('Apprent power='+string(AP)+'degree''phase angle='+string(o)+'degree',  'crnt flowing through coil='+string(I)+'amp')
disp('The time equation of current = 1.711sin(314t-72.34)')
