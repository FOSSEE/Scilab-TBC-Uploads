clc;
p=6; // number of poles
c=240; // number of coils
t=2; // number of turns per coil
rt=0.03; // resistance of one turn
l=0.5; // length of armature
d=0.4; // diameter of armature
B=0.6; // air gap flux density
a=p; // number of parallel paths is same as number of poles foe lap winding
an=40; // mechanical angle subtended by pole
n=1200; //  armature speed
th=an*(p/2); // electrical angle subtended by pole
f=(2*%pi*(d/2)*l*th*B)/(p*180); // flux per pole
Z=2*c*t; // total conductors
disp('case a');
Ea=(f*Z*n*p)/(60*a);
printf('Generated EMF at no load is %f V\n',ceil(Ea));
disp('case b');
ia=40; // armature current
at=(c*t)/a; // number of armature turns per path
r=at*rt; // resistance of one path
Ra=r/a; // resistance of armature circuit
vt=Ea-ia*Ra;
printf('Terminal voltage at full load is %f V\n',ceil(vt));
