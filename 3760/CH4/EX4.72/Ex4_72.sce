clc;
v=230; // source voltage
ra=0.1; // resistance of armature
ia=100; // armature current
n=1600; // speed of dc shunt motor
wl=300; // friction and windage losses
lo=1200; // no load core loss 
lc=2500; // copper losses
Ls=0.01; // stray losses as a fraction of output
Ea=v-ia*ra; // counter EMF
pe=Ea*ia; // electromagnetic power
wo=wl+lo; // no load rotational losses
po=pe-wo; // shaft power + stray load losses
psh=po/(1+Ls);
Tsh=(psh*60)/(2*%pi*n); 
printf('Shaft torque is %f Nm\n',Tsh);
pi=pe+lc; // power input to motor
nm=(psh/pi)*100;
printf('Motor efficiency is %f percent',nm); 
