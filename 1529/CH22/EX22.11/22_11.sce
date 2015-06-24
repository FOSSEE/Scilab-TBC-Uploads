//Chapter 22, Problem 11
clc;
I=80;                       //current
Rse=0.02;                   //series resistance
Ra=0.04;                    //armature resistance
Rf=40;                      //field resistance
V=200;                      //supply voltage
Vse=I*Rse;                  //volt drop in series winding
V1=V+Vse;                   //P.d. across the field winding
If=V1/Rf;                   //field current
Ia=I+If;                    //armature current
E=V1+(Ia*Ra);               //generated e.m.f
printf("Generated e.m.f., E = %d V",E);
