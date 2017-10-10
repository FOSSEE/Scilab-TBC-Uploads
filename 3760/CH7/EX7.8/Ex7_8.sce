clc;
p=4; // number of poles
z=2540; // number of conductors
s=32; // number of slots
c=127; // number of commutator sectors=total number of coils
v=500; // induced voltage required
f=5*10^-3; // field flux per pole
a=2; // number of parallel paths
zs=ceil(z/s); // conductors per slot
// for zs=80
Z=zs*s; // total conductors
t=floor(Z/(2*c)); // turn per coil
C=Z/(2*t); // actual number of coils
// It is necessary that actual coils should be same as commutator segments so one coil is made dummy
disp('commutor pitch is')
disp((c+1)/(p/2));
disp('or');
disp((c-1)/(p/2));
disp('Winding pitch is')
disp(((2*c)+2)/(p/2));
disp('or');
disp(((2*c)-2)/(p/2));
disp('For progressive winding, back pitch=65 and front pitch=63');
disp('For retrogressive winding, back pitch=63 and front pitch=63');
// since dumy coil is not in circuit, number of active conductor is
Z=c*t*2;
n=(v*a*60)/(f*Z*p);
printf('Speed for required induced voltage is %f rpm',n);
