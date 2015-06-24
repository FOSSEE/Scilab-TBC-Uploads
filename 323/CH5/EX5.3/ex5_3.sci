//Chapter 5,Ex5.3,Pg5.5
clc;
//Given f=50Hz V1=240V N1=80 N2=280 A=200sq cm
//V1 is approximately equal to E1 for a transformer
//(i)
B=240/(4.44*50*200*0.0001*80) //E1=4.44fBmAN1
printf("\n Maximum flux density Bm=%.2f Wb/m2 \n",B)
//(ii)
E2=(280/80)*240 //Induced Emf E2=N2/N1*E1
printf("\n Induced EMF E2=%.0f V \n",E2)


