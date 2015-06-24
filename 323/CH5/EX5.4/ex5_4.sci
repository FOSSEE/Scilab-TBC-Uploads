//Chapter 5,Ex5.4,Pg5.5
clc;
//Given E1=3200V E2=400V f=50Hz N2=111
//Part(i)
N1=(3200/400)*111 //E2/E1=N2/N1
printf("\n No of turns in primary=%.0f turns \n",N1)
//Part(ii)
I2=80*1000/400 //I2=KVA Rating*1000/V2 where I2=secondary current
printf("\n Secondary current I2=%.0f A \n",I2)
//Part(iii)
A=400/(4.44*50*1.2*111) //Using the formula E=4.44BmAfN2
printf("\n Cross sectional area=%.4f sq m \n",A)


