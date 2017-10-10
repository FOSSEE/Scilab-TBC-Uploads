//Example 17_11
clc();
clear;
//To find the current in the wires
v1=12           //Units in V
r3=20        //Units in Ohms
v2=6         //Units in V
r2=10      //Units in Ohms
r1=5     //Units in Ohms
i3=((v1*r3)-(v2*r1))/((r2*r3)+(r1*r3)+(r1*r2))         //Units in A
i2=((r2*i3)+v2)/r3            //Units in A
i1=i3+i2         //Units in A
printf("Current in wire 1 is I1=%.1f A\nCurrent in wire 2 is I2=%.1f A\nCurrent in wire 3 is I3=%.1f A\n",i1,i2,i3)
