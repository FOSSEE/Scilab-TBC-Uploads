clc;
v=450; // supply voltage
i=25; // current drawn from supply
n=600; // full load speed
z=500; // number of conductors
f=1.7*10^-2*sqrt(i); // flux per pole
p=4; // number of poles
a=p; // number of parallel paths for wave wound winding is same as number of poles
Ea1=(f*n*z*p)/(60*a); // counter EMF
ra=(v-Ea1)/i; // armature resistance
// T=k*f*ia   where f is flux and ia is armature current As per question new torque is half of initial torque
i2=((i^1.5)/2)^(1/1.5); // new armature current
Ea2=(v/2)-i2*ra; // counter EMF for new armature current
n2=(Ea2*f*sqrt(i)*n)/(Ea1*f*sqrt(i2)); 
printf('New speed at which motor will run is %f rpm',floor(n2));
 
