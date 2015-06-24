//Chapter 22, Problem 14
clc;
Ra=0.25;                        //armature resistance
V=300;                          //supply voltage
Ia1=100;                        //current 1
Ia2=80;                         //current 2
E1=V+(Ia1*Ra);                  //e.m.f (generator)
E2=V-(Ia2*Ra);                  //e.m.f (motor)
printf("(a) As a generator, generated e.m.f = %d V\n\n",E1);
printf("(b) As a motor, generated e.m.f = %d V",E2)
