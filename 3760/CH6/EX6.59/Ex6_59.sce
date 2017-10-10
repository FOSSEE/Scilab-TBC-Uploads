clc;
z=1.2+3*%i; // per phase standstill impedance
v=400; // supply voltage
l=500; // length of feeder line
tr=30; // maximum percentage reduction possible in starting torque
ro=0.02; // resistivity of feeder material
// equating expression of starting torque with and without feeder we get a quadratic equation in R (feeder resistance) whose terms are
t1=(1-(tr/100));
t2=2*real(z)*t1; 
t3=t1*abs(z)^2-abs(z)^2;
p=[ t1 t2 t3 ];
R=roots(p);
A=(ro*l)/R(2);
printf('Minimum allowable cross section is %f mm^2',A); 
