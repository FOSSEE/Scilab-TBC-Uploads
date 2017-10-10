clc;
v=6600; // rated voltage of motor
p=8; // number of poles
f=50; // frequency of motor
xs=20; // percentage synchronous reactance
P=3000; // rated power of motor
m=3; // number of phases
vt=v/sqrt(3); // per phase rated voltage
ia=(P*1000)/(sqrt(3)*v); // per phase armature current
xs=(xs*vt)/(100*ia); // synchronous reactance in ohm
disp('case a');
de=0; // at no load load angle=0 and excitation voltage=per phase rated voltage
ps=ceil(((m*vt^2*cosd(de)*%pi*p)/(xs*360))/1000); 
printf('Synchronozing power per mechanical degree is %f KW\n',ps);
T=((ps*1000*p*60)/(2*%pi*120*f))/1000; 
printf('Corresponding synchronizing torque is %f KN-m\n',T);
disp('case b');
pf=0.8; //  lagging power factor
Ef=vt+%i*ia*(pf-sqrt(1-pf^2)*%i)*xs; // Excitation EMF
de=atand(imag(Ef),real(Ef));
ps=((m*vt*abs(Ef)*cosd(de)*%pi*p)/(xs*360))/1000; 
printf('Synchronozing power per mechanical degree is %f KW\n',ceil(ps));
T=((ps*1000*p*60)/(2*%pi*120*f))/1000; 
printf('Corresponding synchronizing torque is %f KN-m\n',T);



