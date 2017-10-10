//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_4.sce

clc;
clear;
p=4;
s=21;
Cs_per_slot=4;
Cs=Cs_per_slot*s;
printf("\n Number of coil sides=%d \n",Cs)
C=Cs/2;
printf("\n Number of coils=%d \n",C)
Yc1=(C+1)/(p/2);
Yc2=(C-1)/(p/2);
C=41; //Simplex wave winding is not possible with 42 coils.Therefore active coils are 42
Yc=(C+1)/(p/2);
printf("\n Commutator pitch=%d \n",Yc)
Y=((2*C)+2)/(p/2);
printf("\n Winding pitch=%d \n",Y)
Yb=Y/2;
printf("\n Back pitch=%d \n",Yb)
Yf=Yb;
printf("\n Full pitch=%d \n",Yf)
//This value of Yb also satisfies the condition to avoid split winding
