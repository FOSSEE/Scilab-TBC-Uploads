clc;
v=240; // rated voltage of dc shunt motor
i=50; // rated current of dc shunt motor
ra=0.2; // armature resistance
n=4; // number of resistance element
N=1500; // rated speed of motor
vb=1; // pu base voltage
ia=1; // pu base current
rb=v/i; // pu base resistance
ra=ra/rb; // per unit armature resistance
disp('case a');
ia1=1.4; // pu maximum allowable armature current
R=vb/ia1; // net resistance
al=(ra/R)^(1/n); // ratio of total resistances on two adjacent studs
r1=R*(1-al); 
printf('Resistance cut out when handle is at stud 2 is %f pu or %f ohms\n',r1,r1*rb);
r2=al*r1;
printf('Resistance cut out when handle is at stud 3 is %f pu or %f ohms\n',r2,r2*rb);
r3=al*r2;
printf('Resistance cut out when handle is at stud 4 is %f pu or %f ohms\n',r3,r3*rb);
r4=al*r3;
printf('Resistance cut out when handle is at stud 5 is %f pu or %f ohms\n',r4,r4*rb);
disp('case b');
ia2=al*ia1; // pu minimum armature current
// at stud 1 armature current=ia2 after t1 where t is time reckoned from the instant motor is switched on
Ea1=vb-ia2*R; // counter EMF at stud 1
Va1=Ea1+ia2*ra; // voltage across at armature terminal at instant t1
printf('The first contactor should close at %f pu or %f V\n',Va1,Va1*v);
// at stud 2 armature current=ia2 after t2 where t is time reckoned from the instant motor is switched on
Ea2=vb-ia2*(R-r1); // counter EMF at stud 2
Va2=Ea2+ia2*ra; // voltage across at armature terminal at instant t2
printf('The second contactor should close at %f pu or %f V\n',Va2,Va2*v);
// at stud 3 armature current=ia2 after t3 where t is time reckoned from the instant motor is switched on
Ea3=vb-ia2*(R-r1-r2); // counter EMF at stud 3
Va3=Ea3+ia2*ra; // voltage across at armature terminal at instant t3
printf('The third contactor should close at %f pu or %f V\n',Va3,Va3*v);
// at stud 4 armature current=ia2 after t4 where t is time reckoned from the instant motor is switched on
Ea4=vb-ia2*(R-r1-r2-r3); // counter EMF at stud 4
Va4=Ea4+ia2*ra; // voltage across at armature terminal at instant t4
printf('The fourth contactor should close at %f pu or %f V\n',Va4,Va4*v);
disp('case c');
Ea=vb-ia*ra; // pu full load counter EMF
n1=Ea1/Ea; // pu speed when handle is at stud 1
printf('Speed of dc shunt motor when handle is at stud 1 is %f pu or %f rpm\n',n1,n1*N);
n2=Ea2/Ea; // pu speed when handle is at stud 2
printf('Speed of dc shunt motor when handle is at stud 2 is %f pu or %f rpm\n',n2,n2*N);
n3=Ea3/Ea; // pu speed when handle is at stud 3
printf('Speed of dc shunt motor when handle is at stud 3 is %f pu or %f rpm\n',n3,n3*N);
n4=Ea4/Ea; // pu speed when handle is at stud 4
printf('Speed of dc shunt motor when handle is at stud 4 is %f pu or %f rpm\n',n4,n4*N);
disp('Using above data sketch of variation of armature current and speed can be obtained with time');
















