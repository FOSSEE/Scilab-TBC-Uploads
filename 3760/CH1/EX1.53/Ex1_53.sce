clc;
k1=500000; // rated VA of transformer 1
r1=0.015; // p u resistance of transformer 1
x1=0.05; // p u reactance of transformer 1
s1=405; // secondary no load voltage for transformer 1
k2=250000; // rated VA of transformer 2
r2=0.01; // p u resistance of transformer 2
x2=0.05; // p u reactance of transformer 2
s2=415; // secondary no load voltage for transformer 2
l=750000; // KVA rating of load
pf=0.8; // power factor of load
v=400; // voltage at which load is being delivered
z1=(r1+%i*x1)*(v^2/k1); // impedance for transformer 1 in ohms
z2= (r2+%i*x2)*(v^2/k2); // impedance for transformer 2 in ohms
il=l/v; // load current
zl=v/il; // load impedance
zl=zl*(pf+%i*sqrt(1-pf^2)); // complex form of load impedance
zt=z1+z2; // equivalent impedance of both transformer 
io=(s2-s1)/abs(zt); // circulating current at no load
aio=cos(atand(imag(zt),real(zt))*(%pi/180)); // power factor
printf('Circulating current at no load is %f A at a power factor of %f lag\n',io,aio);
Ia=((s1*z2)+(s1-s2)*zl)/((z1*z2)+(zl*zt)); 
ia=abs(Ia);
printf('Current shared by transformer 1 is %f A\n',ia);
Ib=((s2*z1)-(s1-s2)*zl)/((z1*z2)+(zl*zt)); 
ib=abs(Ib);
printf('Current shared by transformer 2 is %f A\n',ib);
kv1=(ia*v)/1000;
pf1=cos(atand(imag(Ia),real(Ia))*(%pi/180));
kw1=kv1*pf1; 
printf('KVA shared by transformer 1 is %f KVA at %f lagging power factor\n',kv1,pf1);
printf('KW shared by transformer 1 is %f KW\n',kw1);
kv2=(ib*v)/1000;
pf2=cos(atand(imag(Ib),real(Ib))*(%pi/180));
kw2=kv2*pf2; 
printf('KVA shared by transformer 2 is %f KVA at %f lagging power factor\n',kv2,pf2);
printf('KW shared by transformer 2 is %f KW\n',kw2);




