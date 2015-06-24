clc
//Initialization of variables
Tr=500 //R
Ta=2500 //R
Q=1000 //Btu
Ta2=1000 //R
//calculations
n1=1-Tr/Ta
w1=n1*Q
n2=1-Tr/Ta2
w2=n2*Q
dw=w1-w2
//results
printf("Work done in case 1 = %d Btu",w1)
printf("\nWork done in case 2 = %d Btu",w2)
printf("\n Excess work done in case 1 = %d Btu",dw)
