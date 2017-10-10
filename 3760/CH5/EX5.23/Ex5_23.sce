clc;
v=1100; // rated voltage of motor
ef=1650; // emf
p=350; // input power in KW
zs=0.7+3.2*%i; // synchronous impedance per phase 
vt=v/sqrt(3); // rated per phase voltage
eft=ef/sqrt(3); // per phase emf
i1=vt/abs(zs); 
printf('Current phasor lagging terminal voltage is %f A\n', i1);
i2=eft/abs(zs);
printf('Current phasor lagging excitation EMF is %f A\n', i2);
ia=(p*1000)/(3*vt);
printf('Working component of armature current is %f A',ia);
disp('using this data vector diagram is drawn and value of ia and power factor is obtained');
ia=194.5; 
pf=19.5; 
printf('Power factor is %f leading\n',pf);
printf('Armature current is %f A\n',ia);
de=acosd((ia^2-i1^2-i2^2)/(-2*i1*i2)); 
printf('Load angle is %f degrees\n',de); 

