//Chapter 9, Problem 6
clc;
B=1.4;                              //flux density
l=12*10^-2;                         //length
N=80;                               //no of turns
n=1200/60;                          //rotation in sec
E1=90;                              //emf
r=(8*10^-2)/2;
Q90=%pi/2;
//calculating velocity
v=2*%pi*n*r;
//calculating maximum emf
E=2*N*B*v*l*sin(Q90);
//calculating velocity with emf 90V
v=E1/(2*N*B*l*sin(Q90));
//calculating speed of coil
w=v/r;
w1=(w*60)/(2*%pi);
disp("(a)");
printf("Maximum emf induced = %f V",E);
disp("(b)");
printf("Speed of coil in rev/min = %d rev/min",w1);
