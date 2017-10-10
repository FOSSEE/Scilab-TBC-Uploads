clc;
E1=200; // rated voltage of l v side
E2=400; // rated voltage of h v side
f=50; // frequency of supply 
W=80; // open circuit input wattage=core loss
m=1.91; // mutual induction between h v and l v side
Ic=W/E2; // core loss current
Qmax=E1/(sqrt(2)*%pi*f); // maximum value of flux linkage with l v winding
Im=Qmax/(sqrt(2)*m);
Io=sqrt(Ic^2+Im^2);
printf('Current taken by transformer when no load test is conducted on h v side is %f A',Io);
