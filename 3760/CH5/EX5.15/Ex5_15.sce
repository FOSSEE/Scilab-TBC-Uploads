clc;
v=11000; // rated voltage of motor
zs=1+10*%i; // per phase synchronous impedance
ia=100; // armature current at unity power factor
vt=v/sqrt(3); // per phase voltage
Ef=sqrt((vt+ia*real(zs))^2+(ia*imag(zs))^2); // excitation EMF from phasor diagram
al=atand(real(zs),imag(zs));
de=atand((ia*imag(zs))/(vt+ia)); // load angle
p=(Ef*vt*sind(de+al)/abs(zs))-((vt^2*real(zs))/abs(zs)^2); // per phase power delivered
disp('case a');
Ef1=1.15*Ef; // Excitation EMF after an increment of 15%
t1=p;
t2=(vt^2/abs(zs)^2)*real(zs);
t3=abs(zs)/(vt*Ef1); // terms needed to evaluate load angle
di=asind((t1+t2)*t3)-al; // load angle
ia1=(sqrt(vt^2+Ef1^2-2*Ef1*vt*cosd(di)))/abs(zs); // armature current
pf=p/(vt*ia1); 
printf('New value of armature current is %f A\n',ia1);
printf('New value of load angle is %f degrees\n',di);
printf('New power factor is %f lagging\n',pf);
disp('case b');
// at unity pf
pf=1;
c1=1+imag(zs)^2;
c2=2*vt;
c3=vt^2-Ef1^2; // coefficients of quadratic equation in armature current
p= [ c1 c2 c3 ];
ia=roots(p);
printf('Armature current under given condition is %f A\n',ia(2));
P=(vt*ia(2)*pf)/1000;
Pt=P*3; 
printf('Per phase power delivered is %f KW\n',P);
printf('Net power delivered is %f KW\n',Pt);
