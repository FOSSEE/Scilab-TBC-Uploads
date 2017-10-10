clc;
v=230; // rated voltage of motor
f=50; // frequency 
p=4; // number of poles
zs=0.6+3*%i; // synchronous impedance
ia1=10; // current drawn by motor at upf
ia2=40; // final current after load is inceased to certain value
vt=v/sqrt(3); // per phase voltage
al=atand(real(zs),imag(zs));
Ef=sqrt((vt-ia1*real(zs))^2+(ia1*imag(zs))^2); // excitation EMF
t1=(ia2*abs(zs))^2; 
t2=Ef^2+vt^2;
t3=-2*Ef*vt; // terms needed to evaluate load angle
de=acosd((t1-t2)/t3); // load angle
pi=(Ef*vt*sind(de-al))/abs(zs)+(vt^2*real(zs))/abs(zs)^2; // input power
pf=pi/(vt*ia2);
printf('Power factor is %f lagging\n',pf);
pd=3*(pi-ia2^2*real(zs)); // developed power
ns=(120*f)/p; // synchronous speed
T=(pd*60)/(2*%pi*ns); 
printf('Torque developed is %f N-m',T);
