//Chapter5,Ex5.6,Pg5.6
clc;
//Given: kVA rating=250kVA f=50Hz N2/N1=0.1 E2=240V
//(i)
E1=240/0.1 //E2/E1=N2/N1
printf("\n Primary EMF E1=%.0f V \n",E1)
//(ii)
I1=250*1000/2400 //Using the formula I=kVA rating*1000/V
printf("\n I1=%.2f A \n",I1)
I2=250*1000/240 
printf("\n I2=%.2f A \n",I2)
