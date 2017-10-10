//Example 17_8
clc();
clear;
//To find the current in all wires
v=9  //Units in V
r1=18    //Units in Ohms
i2=-v/r1      //Units in A
v1=6     //Units in V
r2=12      //Units in Ohms
i3=(v+v1)/r2           //Units in A
i1=i3-i2      //Units in A
printf("Current in wire 1 is I1=%.2f A\nCurrent in wire 2 is I2=%.2f A\nCurrent in wire 3 is I3=%.2f A\n",i1,i2,i3)
