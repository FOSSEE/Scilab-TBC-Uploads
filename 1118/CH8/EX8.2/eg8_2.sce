clear;
//clc();
sb=50000;
s=40000;
pu=s/sb;
printf("\n the pu value for the three phase is: %.2f\n",pu);

sb1=sb/(3);
v=110;
vb=v/sqrt(3);
pukva=s/(3*sb1);
printf("\n the pu kva is: %.2f\n",pukva);
