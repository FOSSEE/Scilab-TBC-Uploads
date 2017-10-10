clc;
n=1490; // speed of machine in rpm
p=4; // number of poles
f=50; // frequency 
v=11000; // rated voltage of machine
p=20*10^6; // rated power of machine
v1=30; 
v2=25; // per phase voltage for phase A of machine
i1=10;
i2=6.5; // per phase current for phase A of machine
ns=(120*f)/p; // synchronous speed of machine
xd=v1/i2; // d-axis synchronous reactance
xq=v2/i1; // q-axis synchronous reactance
disp('case a');
ia=p/(sqrt(3)*v); // armature current
vt=v/sqrt(3); // per phase armature voltage
Ef=vt+ia*xq*%i;
de=atand(imag(Ef),real(Ef)); // load angle
id=ia*sind(de); // d-axis current
Ef1=abs(Ef)+id*(xd-xq); 
printf('Per phase excitation value is %f V\n',ceil(Ef1));
printf('Line value of excitation EMf is %f V\n ',ceil(sqrt(3)*Ef1));
disp('case 2');
pr=(vt^2*(xd-xq)*sind(2*de))/(2*xd*xq);
printf('Reluctance power developed by machine is %f KW per phase\n',pr/1000);
printf('Total reluctance power developed by machine is %f KW',(3*pr)/1000); 
