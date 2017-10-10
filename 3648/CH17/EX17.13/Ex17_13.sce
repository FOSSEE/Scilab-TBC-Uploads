//Example 17_13
clc();
clear;
//To find the values of e, R and I
i1=2       //Units in A
i2=0.5         //Units in A
i=i1+i2     //Units in A
v1=6  //Units in V
v2=16        //Units in V
r=-(v1-v2)/0.5       //Units in Ohms
v3=25     //Units in V
e=v2+v3          //Units in V
printf("The current I=%.1f A\n Resistance is R=%d Ohms\n The value E is=%d V",i,r,e)
