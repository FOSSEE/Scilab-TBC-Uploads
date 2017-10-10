clc;
v=6600; // rated voltage of motor
xs=20 ; // per phase synchronous reactance
p=500000; // VA rating of motor
il=p/(sqrt(3)*v); // rated armature current
vt=v/sqrt(3); // per phase rated voltage
disp('case a'); 
de=10; // load angle
c1=1;
c2=-2*vt*cosd(de);
c3=vt^2-(il*xs)^2; // coefficients of quadratic equation in Ef
p= [ c1 c2 c3 ];
Ef=roots(p); 
printf('Per phase excitation EMF at lagging pf is %f v\n',Ef(2));
printf('Excitation line EMF at lagging pf is %f v\n',sqrt(3)*Ef(2));
printf('Per phase excitation EMF at leading pf is %f v\n',Ef(1));
printf('Excitation line EMF at leading pf is %f v\n',sqrt(3)*Ef(1));
disp('case b');
disp('For lagging pf');
pd=(3*vt*Ef(2)*sind(de))/xs;
pf=pd/(sqrt(3)*v*il);
printf('Mechanical power developed is %f W\n',pd);
printf('Power factor is %f lagging\n',pf);
disp('For leading pf');
pd=(3*vt*Ef(1)*sind(de))/xs;
pf=pd/(sqrt(3)*v*il);
printf('Mechanical power developed is %f W\n',pd);
printf('Power factor is %f leading\n',pf);
disp('case c');
p=200000; // delivered power
de=90; // load angle for falling out of step
// motor falls out of step at de= 90 degrees
Ef=(p*xs)/(3*sind(de)*vt);
printf('Minimum excitation voltage per phase is %f v',Ef);


