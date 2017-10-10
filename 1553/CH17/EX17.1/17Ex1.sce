//chapter 17: Ex1
clc;
clear;
close;
dist=400; //distance given
aspeed=20*5/18; //converting km/hr to m/sec
t= dist/aspeed;
//t1=modulo(t,60);
t2=(t/60);
printf("The time taken is %1.2f min",t2);

