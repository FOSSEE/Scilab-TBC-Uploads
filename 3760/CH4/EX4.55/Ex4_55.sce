clc;
v=250; // rated voltage of dc series motor
ra=0.25; // armature resistance
rf=0.15; // series field resistance
disp('case a');
t=80; // developed torque
n1=1200; // speed at developed torque
// solving quadratic equation in ia
t1=ra+rf;
t2=-v;
t3=(t*2*%pi*n1)/60;
p=[ t1 t2 t3];
ia=roots(p);
printf('Current for developing given torque is %f A\n',ia(2));
disp('case b');
n2=1800; 
ia2=ia(2)/2; 
Ea1=v-ia(2)*(ra+rf); // counter EMF corresponding to armature current of case 1
Ea2=v-ia2*(ra+rf); // counter EMF corresponding to armature current ia2
fr=(n1*Ea2)/(n2*Ea1); // ratio of fluxes for two armatures current
pr=(1-fr)*100;
printf('Percentage reduction in flux is %f pecent',pr);
