//ques-34.14
//Determining transmittance of a solution
clc
ratio1=100/80;//= Io/I1
ratio2=100/60;//= Io/I2
A1=log10(ratio1);
A2=log10(ratio2);
A=A1+A2;
//For, log10(tran) = A
tran=0.48;
printf("The percentage transmittance of the solution is %d.",tran*100);
