clc;
f=50; // frequency
w=2*%pi*f; // angular speed 
y=60; // y=angular position of rotor
Ls=0.6+0.2*cosd(2*y) // self inductance of stator  
dLs=-2*0.2*sind(2*y); // derivative of Ls with y
Lr=0.75+0.3*cosd(2*y) // self inductance of rotor  
dLr=-2*0.3*sind(2*y); // derivative of Lr with y
Ms=0.8*cosd(y) // mutual inductance of stator  
dMs=-0.8*sind(y); // derivative of Ms with y
disp('case a');
is=20; // stator current
ir=10; // rotor current
te=(is^2*dLs)/2+(ir^2*dLr)/2+(is*ir)*dMs; 
printf('Magnitude of torque is %f Nm and since it is negative it acts in such a direction so as to decrease angular position\n',-te);
is=20; // stator current
ir=-10; // rotor current
te=((is^2*dLs)/2)+((ir^2*dLr)/2)+((is*ir)*dMs); 
printf('Magnitude of torque is %f Nm and it acts in clockwise direction\n',te);
is=20; // stator current
ir=0; // rotor current
te=((is^2*dLs)/2)+((ir^2*dLr)/2)+((is*ir)*dMs); 
printf('Magnitude of torque is %f Nm and it acts in counter-clockwise direction\n',-te);
disp('case b');
// rotor winding is short circuited rotor voltage=0 and is=sqrt(2)*20*sin(wt) here average torque is needed so for calculation we need not to worry about sin(wt)
is=sqrt(2)*20; // stator current
ir=(-Ms/Lr)*is; // rotor current
te=((is^2*dLs)/2)+((ir^2*dLr)/2)+((is*ir)*dMs);
printf('Magnitude of torque is %f Nm and it acts in clockwise direction\n',te/2);
disp('case c');
// vs=sqrt(2)*314*sin(wt) again here average torque is needed so for calculation we need not to worry about sin(wt)
vs=sqrt(2)*314; // stator winding voltage
ls1=(Ls-(Ms^2/Lr)); // short circuit inductance of stator winding
is=vs/(w*ls1); // stator current
ir=(-Ms/Lr)*is; // rotor current
te=((is^2*dLs)/2)+((ir^2*dLr)/2)+((is*ir)*dMs);
printf('Magnitude of torque is %f Nm and it acts in clockwise direction\n',te/2);





