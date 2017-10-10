clc;
vt=1; // rated per phase voltage
zs=0.02+0.8*%i; // per phase p.u synchronous impedance
// At the time of synchronization excitation EMF=rated per phase voltage and load angle=0
ef=1; // pu excitation EMF
ia=1; // pu armature current
// from phasor diagram 5.51
t1=ef^2-real(zs)^2-imag(zs)^2-1;
t2=sqrt((2*real(zs))^2+(2*imag(zs))^2);
t3=atand(-real(zs)/imag(zs)); // terms needed to find out power factor
pf=cosd(asind(t1/t2)+ t3); 
printf('Operating power factor is %f leading\n',pf);
al=atand(real(zs),imag(zs));
t1=vt*ia*pf;
t2=(vt^2/abs(zs)^2)*real(zs);
t3=abs(zs)/(vt*ef); // terms needed to evaluate load angle
de=floor(asind((t1+t2)*t3))-al; // load angle
printf('Load angle of generator is %f degrees',de);
