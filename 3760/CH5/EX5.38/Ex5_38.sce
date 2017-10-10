clc;
v=400; // rated voltage of motor
f=50; // frequency of motor
r=1; // per phase resistance
x=5; // per phase reactance
m=3; // number of phases
p=15000; // rated power of motor
disp('case a');
EF=480; // Excitation voltage
ph=p/m; // per phase power
vt=v/sqrt(3); // terminal voltage
R0=vt/(2*r); 
printf('Radius of zero power circle is %f A\n',R0);
R1=sqrt(R0^2-(ph/r)); 
printf('Radius of per phase power circle is %f A\n',R1);
Ef=EF/sqrt(3); // per phase excitation voltage
i1=vt/sqrt(r^2+x^2);
i2=Ef/sqrt(r^2+x^2); // current phasors lagging terminal and excitation voltage
printf('Current phasors lagging terminal voltage is %f A\n',i1);
printf('Current phasors lagging exciation voltage is %f A\n',i2);
disp('using the above data power circle diagram is drawn and value of armature current and power factor is obtained');
ia=26; 
pf=0.955;
printf('Armature current is %f A\n',ia);
printf('Power factor is %f leading\n',pf);
disp('case b');
// from power circle diagram, radius for maximum power is 61 A
R2=61; //  radius for maximum power 
pmax=(R0^2-R2^2)*r;
printf('Maximum power per phase is %f KW\n',pmax/1000);
printf('Maximum power for 3-phase is %f KW\n',(3*pmax)/1000);
disp('case c');
l=12; // load on motor in KW
lp=(l/3)*1000; // per phase load
ef=(sqrt(r^2+x^2))*(R0-sqrt(R0^2-lp/r));
printf('Minimum excitation voltage is %f V',ef);
