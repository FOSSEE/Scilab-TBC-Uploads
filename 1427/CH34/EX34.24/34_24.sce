//ques-34.24
//Calculating percentage of transmission
clc
ratio=1/0.7;//=Io/I1
l1=2; l2=0.05;//thickness (in mm)
x=(l2/l1)*log10(ratio);
//On solving, log10(tran) = x
tran=1.009;
printf("The percentage of transmittance is %.1f.",100/tran);
