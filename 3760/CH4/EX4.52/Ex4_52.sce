clc;
v=240; // supply voltage
n=1000; // speed of motor
i=40; // current drawn from supply
rf=0.2; // field resistance
ra=0.25; // armture resistance
rd=0.3; // diverter resistance
// torque is constant for different speeds
// when diverter is put in parallel with series resistance then some fraction of armature current flows through series circuit this current for constant torque is given by
ia2=sqrt(i^2/(rd/(rf+rd)));
Ea1=v-i*(ra+rf); // counter EMf at n=1000 rpm
Ea2=v-ia2*(ra+((rf*rd)/(rf+rd))); // counter EMF at new speed
n2=(Ea2*n*i)/(Ea1*(rd/(rf+rd))*ia2);
printf('Motor speed after diverter is put in parallel with series field winding is %f rpm',ceil(n2));
