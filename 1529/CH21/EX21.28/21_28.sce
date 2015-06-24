//Chapter 21, Problem 28
clc;
n1=500;                             //primary turns
n2=50;                              //secondary turns
v1=2.4e3;                           //supply voltage
Vp=v1/sqrt(3);                      //primary phase voltage
Vp2=Vp*(n2/n1);                     //secondary phase voltage
Vp3=v1*(n2/n1);                     //secondary phase voltage 2
Vl=sqrt(3)*Vp3;                     //secondary line voltage
printf("(a) For star connection\n")
printf("Secondary line voltage = %.2f V\n\n",Vp2);
printf("(b) For delta connection\n");
printf("Secondary line voltage = %.2f V",Vl);
