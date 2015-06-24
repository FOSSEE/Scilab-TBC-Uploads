clc
//Initialization of variables
cp=0.25
t2=3460 //R
t1=946.2 //R
etat=0.45
Q=-489
t3=520 //R
etat2=0.384
//calculations
Qa=cp*(t2-t1)
w=etat*Qa
eps=-w/Q
I=w+Q
Qa2= cp*(t2-t3)
W2=etat2*Qa2
eps2=-W2/Q
I2=W2+Q
//results
printf("In case 1, Effectiveness of cycle = %d percent",eps*100)
printf("\n in case 1, loss in available energy = %d Btu/lbm",I)
printf("\n in case 2, loss in available energy = %d Btu/lbm",I2)
