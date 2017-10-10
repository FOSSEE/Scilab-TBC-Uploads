clc;
ra=0.3; // armature resistance
n=0.7; // efficiency of dc shunt motor
l=800; // weight of load
v=3; // speed of raising a load
vi=230; // initial value of supply voltage
vf=190; // final value of supply voltage
g=9.81; // acceleration due to gravity
f=l*g; // resisting force due to gravitational pull
p=f*v; // power required for lifting the load
P=p/n; // power rating of dc machine 
printf('Required rating of power is %f KW\n',P/1000);
// for supply voltage of 230 V  Ea=230-ia*ra finding quadratic equation in ia whose terms are 
t1=ra;
t2=-vi;
t3=P;
p=[ t1 t2 t3 ] ;
ia=roots(p);
Ea=vf-ia(2)*ra; // counter EMF for supply voltage of 190 V
v=(Ea*ia(2)*n)/(l*g);
printf('New hoist speed is %f m/s',v);
 
