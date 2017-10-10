clc;
v=11000; // rated voltage of motor
P=20*10^6; // rated power of motor
p=12; // number of poles
f=50; // frequency 
xd=5; // d-axis synchronous reactance
xq=3; // q-axis synchronous reactance
vt=v/sqrt(3); // per phase rated voltage
ia=P/(sqrt(3)*v); // per phase armature current
disp('case a');
// from phasor diagram
Ef=vt-%i*(ia*xq);
de=atand((ia*xq),(vt)); // load angle
id=ia*sind(de); // d-axis component of armature current
Ef=ceil(abs(Ef)+id*(xd-xq));
printf('Excitation voltage is %f V to neutral\n',Ef);
disp('case b');
po=(((Ef*vt*sind(de))/xd)+((vt^2*(xd-xq)*sind(2*de))/(2*xd*xq)))/1000;
printf('Power is %f KW per phase\n',po);
po=3*po*1000; 
printf('Calculated power %f W is almost equal to given rated power i.e %f W\n',po,P);
disp('case c'); 
ps=((Ef*vt*cosd(de))/xd)+((vt^2*(xd-xq)*cosd(2*de))/(xd*xq));
printf('Synchronozing power per electrical degree is %f KW\n',(3*ps*%pi)/(180*1000));
ws=(4*%pi*f)/p; // synchronous speed
t=(3*ps*%pi)/(180*ws);
printf('Torque corresponding to synchronous power is %f N-m\n',t);
disp('case d');
printf('Synchronozing power per mechanical degree is %f KW\n',(3*ps*%pi*p)/(2*180*1000));
t=(3*ps*%pi*p)/(2*180); 
printf('Torque corresponding to synchronous power is %f N-m\n',t);
disp('case e');
de=acosd((-Ef*xq)/(4*Ef*(xd-xq))+(sqrt(0.5+((Ef*xq)/(4*vt*(xd-xq)))^2)));
printf('Maximum value of power angle is %f degrees\n',de);
pmax=(((Ef*vt*sind(de))/xd)+((vt^2*(xd-xq)*sind(2*de))/(2*xd*xq)))/1000;
printf('Maximum power is %f KW per phase\n',pmax);
printf('Maximum power is %f KW for 3 phase\n',pmax*3);
