clc;
p=30*10^6; // rated power of alternator
v=11000; // rated voltage of alternator
zs=0.005+0.70*%i; // p.u synchronous reactance
Ef=1.5; // p.u. excitation EMF
ia=1; // p.u. armature current
vt=1; // p.u. terminal voltage
t1=Ef^2-(real(zs)*ia)^2-(imag(zs)*ia)^2-1;
t2=sqrt((2*ia*real(zs))^2+(2*ia*imag(zs))^2);
t3=atand((2*ia*real(zs))/(2*ia*imag(zs))); // terms needed to find out power factor
pf=cosd(asind(t1/t2)-t3); 
printf('Power factor is %f lagging\n',pf); 
de=acosd((ia*abs(zs)^2-Ef^2-vt^2)/(-2*Ef*vt)); 
printf('Load angle is %f degrees',de);
