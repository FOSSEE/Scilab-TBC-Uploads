//EX10_2 PG-10.17
clc
Ib1=18;//in microA
Ib2=22;//in microA
Ib=(Ib1+Ib2)/2;//input bias current
Ib=Ib
printf("\n input bias current= %.0f microA \n",Ib)
Iios=(Ib1-Ib2);//input offset current
Iios=abs(Iios);
Iios=Iios
printf("\n input offset current= %.0f microA \n",Iios)
