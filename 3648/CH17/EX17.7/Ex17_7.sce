//Example 17_7
clc();
clear;
//To find the current in circuit
v1=3     //Units in V
v2=12 //Units in V
r1=5    //Units in Ohms
r2=6  //Units in Ohms
i=(v1-v2)/(r1+r2)      //Units in A
printf("The current in circuit is I=%.2f A",i)
