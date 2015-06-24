//Chapter 22, Problem 29
clc;
V=300;                              //supply voltage
I=90;                               //total current
Ra=0.1;                             //armature resistance
n1=15;                              //speed of motor
Rse=0.05;                           //series winding resistance
R1=0.2;                             //diverter
E1=V-(I*(Ra+Rse));                  //e.m.f
R=(R1*Rse)/(R1+Rse);                    //equivalent resistance
I1=(R1/(R1+Rse));                       //current
Ia=sqrt(I^2/I1);                        //armature current
E2=V-(Ia*(Ra+R));                       //e.m.f
n2=(E2*I*n1)/(E1*I1*Ia);                //speed of motor 2
printf("Speed n2 = %.3f rev/s\n\n",n2);
printf("Speed of the motor from %d rev/s to %.3f rev/s by inserting 0.2 ohm diverter resistance in parallel with the series winding.",n1,n2);
