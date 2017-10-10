//Example 4_3
clc();
clear;
//To find out at what rate the wagon accelerate and how large a force the ground pushing up on wagon
F1=90   //units in Newtons
F2=60   //units in Newtons
P=F1-F2  //units in Newtons
F3=100   //units in Newtons
F4=sqrt(F3^2-F2^2)  //units in Newtons
a=9.8  //units in meters/sec^2
ax=(F4*a)/F1   //units in Meters/sec^2
printf("The wagon accelerates at ax=%.1f meters/sec^2\n",ax)
printf("Force by which the ground pushing is P=%d N",P)
