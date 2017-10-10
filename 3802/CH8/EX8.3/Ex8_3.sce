//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_3.sce

clc;
clear;
s=25;
c=25;
com_seg=25;
p=4;
Sp=s/p; //slot per pole
printf("\n Slots per pole=%d \n",Sp)
Cs=2*c;
printf("\n Number of coil sides=%d \n",Cs)
Cs_per_slot=Cs/s;
printf("\n Number of coil sides per slot=%d \n",Cs_per_slot)
Y1=((2*c)+2)/(p/2); 
Y2=((2*c)-2)/(p/2);
Y=Y1; //For progressive winding
printf("\n  Winding pitch=%d \n",Y)
Yb=Y/2;
printf("\n Back pitch=%d \n",Yb)
Yf=Yb;
printf("\n Full pitch=%d \n",Yf)
Yc=(c+1)/(p/2);
printf("\n Commutator pitch=%d \n",Yc)


