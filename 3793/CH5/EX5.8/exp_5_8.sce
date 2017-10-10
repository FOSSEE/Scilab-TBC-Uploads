clear;
clc;
s=5;
v1=11;
v2=66;
X1=.08;
xm=75;
Z1=(v1^2)/s;
X11=X1*Z1;
Xmm=xm*Z1;
mprintf(" Actual reactance for primary X1=%f ohm and Xm=%f ohm\n",X11,Xmm);
//case2
Z2=(v2^2)/s;
X2=X1*Z2;
X2m=xm*Z2;
mprintf(" Actual reactance for secondary X1=%f ohm and Xm=%f ohm\n",X2,X2m);
mprintf("The pu values are independent of the side to which they are refeered. Therefore the pu values of X1 and Xm remain unchanged for all types of 3 phase transformer connections.")

