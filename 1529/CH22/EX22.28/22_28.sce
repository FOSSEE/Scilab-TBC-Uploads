//Chapter 22, Problem 28, Fig.22.29(b)
clc;
V=500;                      //supply voltage
Ia=120;                     //armature current
Ia2=60;                     //armature current 2
Ra=0.2;                     //armature resistance
Ra1=0.5;                    //armature resistance 2
n1=10;                      //speed of motor
phi3=0.8;                   //flux
E1=V-(Ia*Ra);               //e.m.f
E2=V-(Ia2*(Ra+Ra1));        //e.m.f 2
n2=n1*E2/E1;                //speed of motor 2
E3=V-(Ia2*Ra);              //e.m.f 3
n3=(n1*E3)/(phi3*E1);        //speed of motor 2
printf("(a) Speed n2 = %.2f rev/s\n\n",n2);
printf("(b) Speed n3 = %.2f rev/s\n\n",n3);
