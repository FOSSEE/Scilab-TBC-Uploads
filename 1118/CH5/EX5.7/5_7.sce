clear;
clc;

//by using kcl at node a
//20*v1-18*v2-3*v3=0
//by kcl at node b
//5*v1+20*v2-18*v3=0
//total voltage across the string
//v1+v2+v3=V
c=[20 -18 -3;5 20 -18 ;1 1 1];//coeffient matrix
b=[0;0;1];
v=inv(c)*b;
for i=1:1:3
    printf("The voltage across unit%d is:%.2f percent\n",i,v(i)*100)
end



