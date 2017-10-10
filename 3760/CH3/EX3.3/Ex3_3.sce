clc;
p=4; // number of poles
s=60; // number of slots
c=8; // number of conductors per slot
f=20*10^-3; // flux per pole
nr=1500; // relative speed in rpm between field flux and armature winding
disp('case a'); 
// winding is lap connected
a=p; // for lap connected winding , number of parallel path=number of pole
z=s*c; // total number of conductors
n=nr/60; // speed in rps
E=(f*z*n*p)/a;
printf('Generated EMF is %f V\n',E);
disp('case b');
kw=0.96; // winding factor
nt=z/2; // Total number of turns 
nph=nt/3; // number of series turns per phase
fg=(p*n)/2; // generated EMF frequency
E=sqrt(2)*%pi*fg*nph*kw*f;
printf('Generated EMF per phase is %f V\n',E);
e=round(sqrt(3)*E);
printf('Generated EMF between line terminal is %f V\n',e);
