//chapter 17 Ex4
clc;
clear;
close;
t=1+(40/60); //time in hours
//dist=t*s; //distance in km and s is speed
//remain_dist=24-dist; //remaining distance in km
//dist=(5/7)*remain_dist;


mycoeff=[-72 12];
p=poly(mycoeff,"x","coeff");
ans=roots(p); 
speed=ans*5/18; //converting to m/sec
printf("The speed is %1.2f m/sec",speed);
