//Chapter5,Ex5.17,Pg5.19
clc;
E1=230 //EMF in primary winding
E2=460 //EMF in secondary winding
R1=0.2 //Primary resistance
R2=0.75 //Secondary resistance
X1=0.5 //Reactance in ohms
X2=1.8 //Secondary reactance in ohms
I2=10 //secondary current in amperes
pf=0.8 //cos(phi)=0.8
K=E2/E1 
printf("K=%.0f \n",K)
R02=R2+(K^2)*R1 //Effective secondary resistance
X02=X2+(K^2)*X1 //Effective secondary reactance
y=sqrt(1-(pf^2)) //sin(phi)=y
V2=E2-I2*((R02*pf)+(X02*y))
printf("\n Secondary terminal voltage=%.1f V \n",V2)

