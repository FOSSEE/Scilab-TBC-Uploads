clc;
v=3300; // rated voltage of motor
zs=0.4+%i*5; // synchronous impedance per phase
E=4000; // excitation EMF
pi=1000; // input power
vp=v/sqrt(3); // per phase rated voltage
ep=E/sqrt(3); // per phase excitation EMF
al=atand(real(zs),imag(zs));
t1=(pi*1000)/3;
t2=(vp^2/abs(zs)^2)*real(zs);
t3=abs(zs)/(vp*ep); // terms needed to evaluate load angle
di=asind((t1-t2)*t3)+al; // load angle
ia=(sqrt(vp^2+ep^2-2*ep*vp*cosd(di)))/abs(zs); 
pf=(pi*1000)/(3*ia*vp);
// here ep*cos(di)+ia*ra*pf> vp; hence leading power factor
printf('Line current is %f A\n',ia);
printf('Power factor is %f leading',pf);
