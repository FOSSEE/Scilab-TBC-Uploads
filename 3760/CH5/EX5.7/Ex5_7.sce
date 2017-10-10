clc;
v=2300; // rated voltage of motor
xs=12 ; // per phase synchronous reactance
p=200000; // VA rating of motor
l1=120000; // initial load
l2=60000; // final load
vt=v/sqrt(3); // rated per phase voltage
ia=l1/(3*vt); // minimum armature current
ia1=1.5*ia; // armature current at reduced load (50% increment)
pf=1/1.5; // power factor
Ef=sqrt((vt*pf)^2+(vt*sqrt(1-pf^2)+ia1*xs)^2); // excitation EMF
de=asind((l2*xs)/(3*vt*Ef)); // new load angle
ia2=(sqrt(vt^2+Ef^2-2*Ef*vt*cosd(de)))/xs; // new armature current
printf('New value of armature current is %f A\n',ia2);
pfn=l2/(3*vt*ia2); 
printf('Power factor at new armature current is %f leading',pfn);
