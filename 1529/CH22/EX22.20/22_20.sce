//Chapter 22, Problem 20
clc;
Ra=0.4;                         //armature resistance
V=240;                          //supply voltage
Rf=150;                         //field resistance
I=30;                           //total current
If=V/Rf;                        //field current
Ia=I-If;                        //armature current
E=V-(Ia*Ra);                    //generated e.m.f
printf("(a) Armature current = %.1f A\n\n",Ia);
printf("(b) Back emf = %.2f V",E)
