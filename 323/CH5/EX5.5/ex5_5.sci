//Chapter5,Ex5.5,Pg5.6
clc;
//Given: kVA rating=5kVA E1=240V E2=2400V f=50Hz Bm=1.2Tesla
N1=240/8 //Since it is given that EMF per turn is 8
//(i)
printf("\n No. of turns in primary=%.0f \n",N1)
//(ii)
N2=(2400/240)*N1 //E2/E1=N2/N1
A=2400/(4.44*50*1.2*300) //using the formula E=4.44BmAfN2
printf("\n Cross sectional area=%.2f sq m \n",A)
//(iii)
I1=5*1000/240 //Using the formula I=kVA rating*1000/V1
printf("\n I1=%.2f A \n",I1)
I2=5*1000/2400
printf("\n I2=%.2f A \n",I2)
