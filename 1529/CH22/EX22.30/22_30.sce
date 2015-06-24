//Chapter 22, Problem 30
clc;
V=400;                      //supply voltage
I=25;                       //current
Ra=0.4;                     //armature resistance
n1=800;                     //motor speed 1
n2=600;                     //motor speed 2
Rse=0.2;                    //series winding resistance
R1=0.2;                     //series field resistance
E1=V-(I*(Ra+Rse));          //e.m.f 1
E2=E1*n2/n1;                //e.m.f 2
R=((V-E2)/I)-(Ra+Rse);          //resistance
printf("Resistance = %f ohms\n\n",R);
printf("Thus the addition of a series resistance of %fohm has reduced the speed from 800 rev/min to 600 rev/min.",R);
