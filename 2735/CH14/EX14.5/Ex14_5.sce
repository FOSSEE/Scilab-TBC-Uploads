clc
clear
//Initialization of variables
t1=30 //F
t2=60 //F
t3=80 //F
W1=0.00206
W2=0.01090
//calculations
cm1=0.24+0.45*W1
H1=cm1*t1+W1*1060
cm2=0.24+0.45*W2
H2=cm2*t3+W2*1060
hf=t2-32
dq=H2-H1-(W2-W1)*hf
//results
printf("In case 1, Enthalpy = %.2f Btu/lbm dry air",H1)
printf("\n In case 2, Enthalpy = %.2f Btu/lbm dry air",H2)
printf("\n Heat added = %.2f Btu/lbm dry air",dq)
