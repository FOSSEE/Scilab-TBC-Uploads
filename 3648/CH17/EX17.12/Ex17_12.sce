//Example 17_12
clc();
clear;
//To find I1, I2 and I3 in the circuit
v1=40       //Units in V
r1=10          //Units in Ohms
r2=30          //Units in Ohms
v2=60    //Units in V
r3=15       //Units in Ohms
v3=50       //Units in V
i1=((-v1*r2)+(-r3*v1)+(60*r3)+(v3*r2))/((r1*r2)+(r2*r3)+(r3*r1))     //Units in A
i=2          //Units in A
i2=(i-i1)/3         //Units in A
i3=i2-i1         //Units in A
printf("Current in wire 1 is I1=%.3f A\nCurrent in wire 2 is I2=%.3f A\nCurrent in wire 3 is I3=%.3f A\n",i1,i2,i3)
