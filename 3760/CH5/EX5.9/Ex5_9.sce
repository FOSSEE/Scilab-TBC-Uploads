clc;
v=400; // rated voltage of motor
zs=0.13+%i*1.3 ; // per phase synchronous impedance
p=100000; // VA rating of motor
l=4000; // stray losses
pl=75000; // power delivered to load
disp('case a');
il=p/(sqrt(3)*v); // line current
vt=v/sqrt(3); // per phase rated voltage
pd=pl+l ; // power developed
poh=3*il^2*real(zs);
lt=poh+l; // total losses
pi=pl+lt; // input power 
pf=pi/p; // power factor
n=(1-(lt/pi))*100; // efficiency
printf('Power factor is %f\n',pf);
printf('Efficiency is %f percent\n',n);
Ef1=round(sqrt((vt*pf-il*real(zs))^2+(-vt*sqrt(1-pf^2)+il*imag(zs))^2)); // excitation EMF
de=atand((-vt*sqrt(1-pf^2)+il*imag(zs))/(vt*pf-il*real(zs)))+acosd(pf); // load angle
printf('Excitation EMf at under excitation is %f v\n',Ef1);
printf('Load angle at under excitation is %f degrees \n',de);
Ef2=round(sqrt((vt*pf-il*real(zs))^2+(vt*sqrt(1-pf^2)+il*imag(zs))^2)); // excitation EMF
de=atand((vt*sqrt(1-pf^2)+il*imag(zs))/(vt*pf-il*real(zs)))-acosd(pf); // load angle
printf('Excitation EMf at over excitation is %f v\n',Ef2);
printf('Load angle at over excitation is %f degrees\n',de);
i=pi/(sqrt(3)*v); 
printf('Input current is %f A\n',i);
disp('caes b');
de=acosd(real(zs)/abs(zs)); // load angle
pmax=((vt*Ef1)/abs(zs))-((Ef1^2*real(zs))/abs(zs)^2);
pt=pmax*3; 
printf('Load angle for maximum power output is %f degrees\n',de);
printf('Maximum output per phase is %f W\n',pmax);
printf('Total maximum output is %f W\n',pt);
