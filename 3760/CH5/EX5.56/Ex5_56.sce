clc;
xd=1.2; // pu d-axis synchronous reactance
xq=0.8; // pu q-axis synchronous reactance
xe=0.1; // pu external reactance
vb=1; // voltage of infinite bus
pf=0.9; // lagging power factor
disp('case a');
// vb=vt-j*ia*xe -(1)where ia is armature current
// ia=ia*(pf-%i*sqrt(1-pf^2)); // complex form of armature current
// vt*ia=1 therefore ia=1/vt solving equation 1 we get a quadratic equation in vt whose terms are  
t1=1; 
t3=-2*xe*sqrt(1-pf^2)-vb;
t5=(xe*sqrt(1-pf^2))^2-(pf*xe)^2; // terms of quadratic equation in terminal voltage
p= [t1 0 t3 0 t5];
vt=roots(p);
ia=1/vt(2); // pu armature current
printf('Generator terminal voltage is %f pu\n',vt(2));
printf('Armature current is %f pu\n',ia);
disp('case b');
Ef=vt(2)+ia*(pf-%i*sqrt(1-pf^2))*%i*xq; 
de=atand(imag(Ef),real(Ef));
pa=acosd(pf); // power factor angle
id=ia*sind(de+pa); // d-axis component of armature current
Ef=abs(Ef)+id*(xd-xq);
printf('Load angle is %f degrees\n',de);
printf('Excitation voltage is %f pu',Ef);
