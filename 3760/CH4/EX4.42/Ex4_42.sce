clc;
N=1000; // speed of dc series motor
v=250; // supply from mains
i=50; // current drawn from mains
r=0.6; // armature + field resistance
rg=4.4; // additional resistance
// field flux is proportional to armature current
Ea1=v-i*r; // counter EMF at 1000 rpm
// Ea2=v-(n2/20)*(r+rg) where Ea2 is counter EMf at speed n2 . taking ratio of Ea2/Ea1 we obtain a quadratic equation in n2 whose terms are given by
t1=(Ea1*i)/N;
t2=(N*i)*((r+rg)/(N/i)); 
t3=-(N*i*v);
p=[ t1 t2 t3];
n=roots(p); 
printf('New speed of motor is %f rpm',ceil(n(2)));
   
