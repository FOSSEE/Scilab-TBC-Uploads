//Example 17_14
clc();
clear;
//To find the I1,I2,I3 values and charge on the capacitor
v1=12      //Units in V
r1=6      //Units in Ohms
i1=v1/r1      //Units in A
v2=4        //Units in V
r2=8       //Units in Ohms
i3=(v1+v2)/r2         //Units in A
i2=i1+i3          //Units in A
printf("Current in wire 1 is I1=%d A\nCurrent in wire 2 is I2=%d A\nCurrent in wire 3 is I3=%d A\n",i1,i2,i3)
v3=10                //Units in V
vfg=-v3+(r1*i1)          //Units in V
c=5*10^-6                //Units in F
q=c*vfg                  //Units in C
printf("The charge on the capacitor is q=%.5f C",q)   
