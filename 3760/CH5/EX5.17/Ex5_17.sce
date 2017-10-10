clc;
p=40*10^6; // rated power of turbogenerator
v=11000; // rated voltage of generator
xs=0.8; // p.u. synchronous reactance
ra=0.5; // series reactance of infinite bus
vt=v/sqrt(3); // rated per phase voltage
disp('case b');
ia=p/(v*sqrt(3)); // armature current 
printf('Armature current is %f A\n',ia);
xs=xs*(vt/ia); // xs in ohms
vd=ia*ra; // voltage drop in series resistance
pf=cosd(asind((vd/2)/vt)); 
printf('Alternate power factor is %f lagging\n',pf);
disp('case c');
Ef=sqrt((vt*pf)^2+((vd/2)+(ia*xs))^2); 
printf('Excitation EMF line to neutral is %f V\n',Ef);
printf('Excitation EMF line to line is %f V\n',sqrt(3)*Ef); 
