//Chapter-4, Example 4.10, Page 137
//=============================================================================
clc
clear
//INPUT DATA
f=50;//freq in c/s
I=20;//current in A
Im=I/sqrt(2);
t=0.0025;//time in sec
//equation for instantaneous emf
i=(20*sqrt(2))*sin(2*%pi*f*t);
t1=0.0125;
i1=(20*sqrt(2))*sin(2*%pi*f*t1);
i2=14.14;
x=(i2)/(20*(sqrt(2)));
y=asin(x);
z=(2*%pi*50);
t=y/z;
mprintf("current when t is 00025 sec and 0.0125 sec are %d A and %d A respectively\n",i,i1);
mprintf("time when value of instantaneous cureent 14.14 is %g sec",t);
//note:in textbook for sub div (c) square root has not taken for maximum value computed
//=================================END OF PROGRAM==============================
