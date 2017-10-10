//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_2.sce

clc;
clear;
p=4;
s=30;
c=90;
Cs=2*c;
printf("\n Number of coil sides=%d \n",Cs)
Cs_per_slot=Cs/s;
printf("\n Number of coil sides per slot=%d \n",Cs_per_slot)
Yb1=Cs/p+2;        //Winding is not split
Yb2=Cs/p-2;        //Winding is split
Yb=Yb2;
printf("\n Back pitch=%d \n",Yb)
Cs1=1+Yb;
Cs3=3+Yb;
Cs5=5+Yb;
//Top coil sides 1,3,5 are in in slot,while all the corresponding bottom coil sides 44,46,48 are in slot 8.


