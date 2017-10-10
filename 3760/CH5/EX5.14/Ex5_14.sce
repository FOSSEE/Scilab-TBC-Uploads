clc;
xs=0.8; // pu reactance
Ef=1.3; // pu excitation EMF
p=0.5; // pu output power
vt=1; // rated per phase voltage
disp('case a');
de=asind((p*xs)/(vt*Ef)); 
printf('Load angle is %f degrees\n',de);
ia=(sqrt(vt^2+Ef^2-2*vt*Ef*cosd(de)))/xs; // from phasor diagram (fig5.49)
printf('Armature current is %f p.u.\n',ia);
pf=p/(vt*ia);
printf('Power factor is %f lagging\n',pf);
disp('case b');
// Under given condition magnitude of power factor remains same but it becomes leading
Ef=sqrt((vt*pf)^2+(vt*sqrt(1-pf^2)-ia*xs)^2); // excitation EMF
printf('Excitation EMF is %f p.u.\n',Ef);
de=asind((p*xs)/(vt*Ef)); 
printf('Load angle is %f degrees\n',de);
