clc;
v=240; // rated voltage of motor and supply voltage
i=5.2; // line current
p=10000; // rated power of motor
no=1200; // no load speed
ra=0.25; // armature resistance
rf=160; // field resistance
ifl=v/rf; // constant field current
iao=i-ifl; // no load armature current
wo=v*iao-iao^2*ra; // no load rotational losses
//  by using equation of electromagnetic power solving quadratic equation in armature current whose terms are
t1=ra; 
t2=-v; 
t3=p+wo;
P=[ t1 t2 t3 ];
ia=roots(P);
pi=(v-ia(2)*ra)*ia(2)+ia(2)^2*ra+ifl*v; // motor input
nm=(p/pi)*100;
printf('Motor efficiency at rated load is %f percent',nm);
