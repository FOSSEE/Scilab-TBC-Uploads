//ques-34.8
//Calculating absorbance and molecular absorption coefficient of sample
clc
ratio=1/0.16;//ratio = Io/I
C=0.05;//concentration of benzene solution (in M)
l1=0.1; l2=0.2;//length (in cm)
EC=log10(ratio)/(C*l1);
A=EC*C*l1;
//On solving, log10(tran) = EC*C*l2
tran=0.025;
printf("The absorbance is %.1f, molecular absorption coefficient  is %d M/cm and transmittance through 2mm cell is %.3f.",A,EC,tran);
