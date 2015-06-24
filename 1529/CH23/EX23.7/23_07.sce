//Chapter 23, Problem 7
clc;
f=50;                           //supply frequency
fr=3;                           //rotor frequency
p=8/2;                          //pairs of poles
s=fr/f;                         //slip
ns=(f/p)*60;                    //synchronous speed
nr=ns-(s*ns);                   //rotor speed
printf("(a) Slip, s = %f \n\n",s);
printf("(b) rotor speed = %f rev/min",nr);
