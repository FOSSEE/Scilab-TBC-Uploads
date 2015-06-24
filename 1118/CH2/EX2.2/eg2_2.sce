clear;
clc;

//i1=p/v
//line loss=2i^2*r
//vol of conductor required v1=2*l*a1

a=1/6;  //a=r1/r2
b=1/a  //b=a2/a2

//v2=3*l*a2+ 0.5*l*a2
//v2/v1=3.5*l*a2/2*l*a1

c=3.5/(2*b);  //c=v2/v1
printf("the ratio of the volumes of the conductors is:%.2f",c);
