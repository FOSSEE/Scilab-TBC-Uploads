clear;
clc;
f=50;
s=100;
H=3.5;
p=.16;
sb=500;
ip=.18;
Pole=4;
K=H*s;
mprintf("Kinetic energy stored is %.3f MJ\n",K);
Pa=(ip-p)*sb;
A=(Pa*360*f)/(2*H*s);
mprintf("acceleration of generator is %.3f degree electrical per second sqr\n",A);
a=7.5;
accp=a/f;
Ns=120*f/Pole;
rotora=(2.996*accp)^2; //change in rotor angle equation obtained with the help of eq11.1.1 and integrating it

mprintf("change in rotor angle is %.3f rad \n",rotora);
del=.202;
rv=2.996*sqrt(del);
vel=(rv*120)/(3.14*Pole);
NN=Ns+vel;
mprintf("Speed is %.3f rpm",NN);
