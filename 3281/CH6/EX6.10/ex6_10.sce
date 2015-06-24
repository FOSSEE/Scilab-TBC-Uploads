//Page Number: 335
//Example 6.10
clc;
//Given
Pout=250; //W
n=0.15;
V0=7.5D+3; //V
f=6.15D+9; //Hz
c=3D+8; //m/s

//(i) Input Power
Pi=Pout/n;
disp('W',Pi,'Input Power:');

//(ii) Beam current
I0=Pi/V0;
disp('A',I0,'Beam current:');

//(iii) Beam velocity
vb=0.593D+6*sqrt(V0);
disp('m/s',vb,'Beam velocity:');

//(iv) Radius of helix
a=(2*vb)/(2*%pi*f);
disp('m',a,'Radius of helix:');

//(v) Electron beam radius
r=(3*a)/4;
disp('m',r,'Electron beam radius:');

//(vi) Pitch of helix
p=(2*%pi*a*vb)/c;
disp('m',p,'Pitch of helix:');

//(vii) Current density
J0=I0/(%pi*r*r);
disp('kA/msqr',J0/1000,'Current density:');

//(viii) Magnetic field for beam confinement
B=(4*8.3D-4*sqrt(I0/(r*r*sqrt(V0))));
disp('mT',round(B*1000),'Magnetic field for beam confinement:');
