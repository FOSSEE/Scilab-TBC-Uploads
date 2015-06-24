clc
//Initialization of variables
k=1.29
R=1.986/17.024
T1=464.7
pr=4.94
//calculations
Wrev= k*R*T1/(1-k) *(pr^((k-1)/k) -1)
Wold=-100.1 //Btu/lbm
err=(Wrev-Wold)/Wrev
//results
printf("Work done = %.1f Btu/lbm",Wrev)
printf("\n error = %.1f percent",err*100)
