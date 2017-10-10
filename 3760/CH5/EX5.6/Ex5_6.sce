clc;
v=6600; // rated voltage of motor
zs=1.5+12*%i ; // per phase synchronous impedance
pi1=1000; // input power 
pf=0.8; // power factor
pi2=1500; // power at which power factor is to be found out
vt=v/sqrt(3); // per phase voltage
al=atand(real(zs),imag(zs));
ia=(pi1*1000)/(sqrt(3)*v*pf);
Ef=sqrt((vt*pf-ia*real(zs))^2+(vt*sqrt(1-pf^2)+ia*imag(zs))^2); // excitation EMF
t1=(pi2*1000)/3;
t2=(vt^2/abs(zs)^2)*real(zs);
t3=abs(zs)/(vt*Ef); // terms needed to evaluate load angle
di=asind((t1-t2)*t3)+al; // load angle
ia=(sqrt(vt^2+Ef^2-2*Ef*vt*cosd(di)))/abs(zs); // new armature current
pfn=((pi2-pi1)*1000)/(ia*vt);
// as Ef*cos(di)+ia*ra> vt hence leading power factor
printf('New power factor is %f leading',pfn); 
