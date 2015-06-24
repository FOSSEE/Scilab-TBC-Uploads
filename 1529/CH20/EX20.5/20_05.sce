//Chapter 20, Problem 5
clc;
Zp=50;                              //phase impedance
Vp=440;                             //3 phase supply
Ip=Vp/Zp;                           //phase current
Il=sqrt(3)*Ip;                      //line current
printf("(a) Phase current = %.1f A\n\n",Ip);
printf("(b) For a delta connection Il = %.2f A",Il);
