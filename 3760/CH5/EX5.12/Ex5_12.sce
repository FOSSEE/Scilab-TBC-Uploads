clc;
v=415; // rated volatge of motor
pf=0.9; // leading power factor
ps=15000; // shaft power
E=400; // excitation emf
r=0.5; // per phase resistance
vt=v/sqrt(3); // rated per phase voltage
e=E/sqrt(3); // per phase excitation emf
c1=1.5;
c2=-sqrt(3)*v*pf;
c3=ps; // coefficients of quadratic equation in armature current
p= [ c1 c2 c3 ];
ia=roots(p);
// higher value of armature current is neglected
xs=((vt*sqrt(1-pf^2))-(sqrt(e^2-(vt*pf+ia(2)*r)^2)))/ia(2);
printf('Synchronous reactance is %f ohm',xs);
