clc;
// Answer for minimum excitation voltage is given wrong in book
v=400; // rated voltage of motor
xd=6; // d-axis synchronous reactance
xq=4; // q-axis synchronous reactance
vt=400/sqrt(3); // rated per phase voltage
p=21; // load carried by motor
pph=(p/3)*1000; // per phase load carried by motor
// As per the theory given in question, expression is derived
// After the derived expression,
// cos(de)=(vt^2*(xd-xq)*sin(de)^3)/(pph*xd*xq), value of de (load angle is obtained by trial and error method  and value of load angle is)
de=63.2;
Ef=(pph-(vt^2/2)*((xd-xq)/(xd*xq))*sind(2*de))/((vt/xd)*sind(de));
printf('Maximum stable load angle is %f degrees\n',de);
printf('Minimum excitation voltage is %f v\n',Ef);
