//Chapter 23, Problem 4
clc;
f=50;                               //supply frequency
p=4/2;                              //pairs of poles
nr=1455/60;                         //rotor speed
ns=f/p;                             //synchronous speed
s=((ns-nr)/ns)*100;                 //slip
printf("(a) synchronous speed = %f rev/s\n\n",ns);
printf("(b) Slip, s = %d percent",s);

