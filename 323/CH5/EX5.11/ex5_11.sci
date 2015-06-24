//Chapter 5,Ex5.10,Pg5.13
clc;
E1=6600 //Primary voltage
E2=400 //Secondary voltage
R1=2.5 //Primary resistance
X1=3.9 //Primary reactance
X2=0.025 //Secondary reactance
R2=0.01 //Secondary resistance
K=E2/E1 
//Equivalent resistance referred to primary
R01=R1+(R2/(K^2))
printf("\n Equivalent resistance referred to primary=%.2f ohms \n",R01)
//Equivalent reactance referred to primary
X01=X1+(X2/(K^2))
printf("\n Equivalent reactance referred to secondary =%.2f ohms \n",X01)
//Equivalent resistance referred to secondary
R02=R2+((K^2)*R1)
printf("\n Equivalent resistance referred to secondary=%.2f ohms \n",R02)
//Equivalent resistance referred to secondary
X02=X2+((K^2)*X2)
printf("\n Equivalent resistance referred to secondary=%.2f ohms \n",X02)

