clc;
v=400; // rated voltage of synchronous machine
vt=v/sqrt(3); // per phase rated voltage
ps=9500; // shaft load
xd=5; // per phase d-axis synchronous reactance
xq=3.2; // per phase q-axis synchronous reactance
l=500; // friction windage and core losses
np=3; // number of phases 
// at rated voltage excitation EMF
Ef=v/sqrt(3); // excitation EMF
disp('case a');
pt=ps+l; // power developed
// by using formula pd=np*(((Ef*Ef*sind(de))/xd)+((Ef^2*sind(2*de)*0.5*(xd-xq))/(xd*xq))), and hit and trial method we obtain value of load angle
de=11.623; // load angle
id=(Ef-Ef*cosd(de))/xd; // d-axis component of armature current
iq=(Ef*sind(de))/xq; // q-axis component of armature current
ia=sqrt(id^2+iq^2);
printf('Armature current is %f A\n',ia);
pf=cosd(acosd(iq/ia)-de);
printf('Power factor is %f lagging\n',pf); 
disp('case b');
de=acosd((-Ef*xq)/(4*Ef*(xd-xq))+(sqrt(0.5+((Ef*xq)/(4*vt*(xd-xq)))^2)));
pd=np*(((Ef*Ef*sind(de))/xd)+((Ef^2*sind(2*de)*0.5*(xd-xq))/(xd*xq))); // maximum power developed
po=pd-l; 
printf('Maximum power output is %f W',po);
