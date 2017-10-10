clc;
xd=1.2; // d axis synchronous reactance
xq=0.8; // q axis synchronous reactance
ra=0.025; // armature resistance
vt=1; // pu rated per phase voltage
disp('case a');
disp('For lagging power factor')
pf=0.8; // power factor
ia=1*(pf-sqrt(1-pf^2)*%i); // armature current
Ef1=vt+%i*(ia*xq)+ia*ra; // excitation EMF
id=1*sind(atand(imag(Ef1),real(Ef1))+acosd(pf)); // d component of armature current
iq=1*cosd(atand(imag(Ef1),real(Ef1))+acosd(pf)); // q component of armature current
Ef=abs(Ef1)+id*(xd-xq); // excitation EMF
printf('Excitation EMF is %f p.u. at a load angle of %f degrees\n',abs(Ef),atand(imag(Ef1),real(Ef1)));
disp('case b');
disp('For leading power factor')
pf=0.8; // power factor
ia=1*(pf+sqrt(1-pf^2)*%i); // armature current
Ef1=vt+%i*(ia*xq)+ia*ra; // excitation EMF
id=1*sind(atand(imag(Ef1),real(Ef1))-acosd(pf)); // d component of armature current
iq=1*cosd(atand(imag(Ef1),real(Ef1))-acosd(pf)); // q component of armature current
Ef=abs(Ef1)+id*(xd-xq); // excitation EMF
printf('Excitation EMF is %f p.u.at a load angle of %f degrees\n',abs(Ef),atand(imag(Ef1),real(Ef1)));



