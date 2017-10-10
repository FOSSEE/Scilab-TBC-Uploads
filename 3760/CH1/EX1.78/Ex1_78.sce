clc;
P=100000; // rated VA of transformer
n=0.98; // maximum possible efficiency 
l=80000; // rated KVA of load
vrm=0.04; // maximum possible voltage regulation is equal to ze2 in p u
pf=0.8; // power factor at which efficiency anf voltage regulation has to be determined
pl=((1/n)-1)*l; // total losses in transformer
pc=pl/2; // core losses; at maximum efficiency ohmic losses = core losses
po=(1/pf)^2*pc; // ohmic losses at given power factor
N=(P*pf*100)/(l+po+pc); 
printf('Efficiency at %f lagging power factor is %f percent\n',pf,N);
re2=po/P; // resistance in p u
xe2=sqrt(vrm^2-re2^2);
vr=(re2*pf+xe2*sqrt(1-pf^2))*100;
printf('Voltage regulation at %f lagging power factor is %f percent',pf,vr);
