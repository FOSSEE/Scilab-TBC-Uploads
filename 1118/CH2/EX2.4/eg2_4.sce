clear;
clc;

//a). single phase supply
//p1=v1*i1*pf
//line loss= 2*i1*i1*r
//percentage line loss=line loss*100/(v8i*pf)

//b).three phase supply
//p3=sqrt(3)*v*i3*pf
//percentage line loss=3*i3*i3*r*100/p3

//ratio of load transmitted

a=2;  //a=p3/p1
add_load=(a-1)*100;  //(p3-p1)/p1

printf("the percentage of additional load is:%.2f",add_load);
