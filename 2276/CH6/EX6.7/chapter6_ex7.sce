clc
clear

//input
z1=10+(%i*15);//first impedance in ohms
z2=15-(%i*25);//second impeddance in ohms
//impedances 1 and 2 are connected in parallel

//calculations
Z1=(((real(z1)^2)+(imag(z1)^2)))^0.5;//magnitude of impedance 1 in ohms
Z2=(((real(z2)^2)+(imag(z2)^2)))^0.5;//magnitude of impedance 2 in ohms
phi1=(180/%pi)*atan((imag(z1))/real(z1));//phase angle 1 in degrees
phi2=(180/%pi)*atan((imag(z2))/real(z2));//phase angle 1 in degrees
Z=z1+z2;//total impedance in ohms
Zt=(((real(Z)^2)+(imag(Z)^2)))^0.5;//magnitude of total impedance in ohms
PHIt=(180/%pi)*atan((imag(Z))/real(Z));//total phase angle in degrees
ZT=(Z1*Z2)/Zt;//magnitude of equivalent impedance in ohms
PHIT=phi1+phi2-PHIt;//phase angle of equivalent impedance in degrees
p=(PHIT*%pi)/180;// phase angle in radians
Zs=(ZT*cos(p))+(%i*(ZT*sin(p)));//series impedance in ohms
R=real(Zs);//resistance of equivalent series circuit in ohms
X=imag(Zs);//reactance  of equivalent series circuit in ohms

//output
mprintf('the resistance and inductive reactance of equivalent series circuit are %3.1f ohm and %3.2f ohm',R,X)
