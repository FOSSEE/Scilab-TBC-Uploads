clc;
v=400; // rated voltage of dc shunt motor
p=20000; // rated power of motor
i=2.5; // no load current 
ra=0.5; // armature resistance
rf=800; // field current
vb=2; // voltage drop in brush
ifl=v/rf; // constant shunt field current
iao=i-ifl; // no load armature current
wo=v*iao-iao^2*ra; // no load rotational losses
tl=wo+v*ifl; // total losses
//  by using equation of power input= output power + losses, solving quadratic equation in armature current whose terms are
t1=ra;
t2=vb-v; 
t3=p+tl-v*(v/rf);
P=[ t1 t2 t3];
ia=roots(P);
lo=ia(2)^2*ra; // armature ohmic losses
lb=ia(2)*vb; // brush drop loss
tl=tl+lo+lb; // total losses at rated load
pi=p+tl; // input power 
nm=(p/pi)*100;
printf('Full load efficiency is %f percent',nm);   
