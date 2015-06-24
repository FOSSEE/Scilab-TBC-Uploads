//Chapter 5,Ex5.12,Pg5.14
clc;
E1=4400 //Primary EMF
R1=3.45 //Primary resistance in ohms
X1=5.2 //Primary reactance in ohms
E2=220 //Secondary EMF
R2=0.009 //Secondary resistance in ohms
X2=0.015 //Secondary reactance in ohms
K=E2/E1
I1=50*1000/E1 //Using the formula I1=kVA rating*1000/E
printf("\n Full load Primary current I1=%.2f A \n",I1)
I2=50*1000/220
printf("\n Full load secondary current I2=%.2f A \n",I2)
R01=R1+(R2/(K*K))
printf("\n Equivalent resistance referred to primary=%.2f ohms \n",R01)
X01=X1+(X2/(K*K))
printf("\n Equivalent reactance referred to primary =%.1f ohms \n",X01)
Z01=sqrt((R01^2)+(X01*X01))
printf("\n Equivalent impedance referred to primary=%.2f ohms \n",Z01)
R02=(K^2)*R01
printf("\n Equivalent resistance referred to secondary=%.2f ohms \n",R02)
X02=(K^2)*X01
printf("\n Equivalent reactance referred to secondary=%.3f ohms \n",X02)
Z02=(K^2)*Z01
printf("\n Equivalent impedance referred to secondary=%.2f ohms \n",Z02)
CL1=(I1^2)*R1 + (I2^2)*R2
printf("\n Copper losses with individual resistances=%.2f W \n",CL1)
CL2=(I1^2)*R01
printf("\n Copper loss with equivalent resistances=%.1f W \n",CL2)

