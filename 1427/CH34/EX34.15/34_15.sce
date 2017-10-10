//ques-34.15
//Calculating percentage of light absorbed by a solution
clc
C1=30.1; C2=15.05;//concentration (in g/L)
l=1;//thickness (in cm)
ratio=100/50;//=Io/I1
z=log10(ratio)/(C1*l);//= EC/M
//On solving, log10(tran) = EC/M*C2*l
tran=1.4144;
I2=100/tran;
ab=100-I2;
printf("The percentage of light absorbed by the solution is %.1f.",ab);
