
//determine the inductance of the coil
R=6
V=250;//volts
I=1.5;//amps
Z=V/I;//impedance
f=60;//hetrz
X=sqrt(Z^2-R^2)
L=X/(2*%pi*f)
disp('inductance of coil='+string(L)+  'henry')
