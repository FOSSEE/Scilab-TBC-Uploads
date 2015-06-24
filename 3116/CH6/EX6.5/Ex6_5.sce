

clc
//From graph log D ad 1/T are deducted
inv_T1=0.8*10^-3//Reciprocal of temp.  in K^-1
inv_T2=1.1*10^-3 //Reciprocal of temp.  in K^-1
logD1=-12.4
logD2=-15.45

R=8.31 //Gas law Constant in J/mol-K

printf("Example 6.5\n")
Q_d=-2.3*R*(logD1-logD2)/(inv_T1-inv_T2)
printf("\n Activation energy is %d kJ/mol",Q_d/1000)
D_0=10^(logD2+(Q_d*inv_T2/(2.3*R)))//For calculating Preexponential factor
printf("\n Preexponential factor D_0 is %.1e m^2/s\n",D_0)
// Answer in book is 5.2e-5 m^2/s. It is because of consideration of different number of significant figures

