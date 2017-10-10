clc;
p=4; // number of pole
f=50; // frequency of supply
ns=420; // stator turns
nr=240; // rotor turns
F=30*10^-3; // flux per pole
kw=0.96; // winding factor for both stator and rotor
nsph=ns/3; // stator turn per phase
nrph=nr/3; // rotor turn per phase
es=sqrt(2)*%pi*f*kw*nsph*F; // stator turn per phase
disp('case a');
// rotor is stationary
s=1; // at standstill slip=1
er=sqrt(2)*%pi*f*kw*nrph*F;
printf('frequency of EMF in stator is %f Hz\n',f);
printf('frequency of EMF in rotor is %f Hz\n',f);
printf('Per phase stator EMF is %f V\n',es);
printf('Per phase rotor EMF is %f V\n',er);
disp('case b'); 
sr=1440; // speed of rotor in rpm in direction of rotating flux
Ns=(120*f)/p; // speed of rotating flux
s=(Ns-sr)/Ns; // slip
fr=s*f; // frequency of EMF in rotor
er=sqrt(2)*%pi*fr*kw*nrph*F;
printf('frequency of EMF in stator is %f Hz\n',f);
printf('frequency of EMF in rotor is %f Hz\n',fr);
printf('Per phase stator EMF is %f V\n',es);
printf('Per phase rotor EMF is %f V\n',er);
disp('case c'); 
sr=1440; // speed of rotor in rpm opposite to the direction of rotating flux
s=(Ns+sr)/Ns; // slip
fr=s*f; // frequency of EMF in rotor
er=sqrt(2)*%pi*fr*kw*nrph*F;
printf('frequency of EMF in stator is %f Hz\n',f);
printf('frequency of EMF in rotor is %f Hz\n',fr);
printf('Per phase stator EMF is %f V\n',es);
printf('Per phase rotor EMF is %f V\n',er);
