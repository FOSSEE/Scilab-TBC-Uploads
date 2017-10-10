//ques-16.22
//Determining order of the reaction
clc
r1=0.76; r2=1.07;//rate of reaction (in torr/s)
x1=5; x2=20;//percentage of decomposition
a1=1-(x1/100); a2=1-(x2/100);
n=log10(r2/r1)/log10(a1/a2);//order
printf("The order of the reaction is %.0f.",n);
