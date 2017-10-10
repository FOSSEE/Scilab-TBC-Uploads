//Example 1.2
clc;
//Enter the measurements in a vector
Xn=[98,101,102,97,101,100,103,98,106,99];
//Calculate mean
Y=mean(Xn);
//Extract the 6th element
X6=Xn(1,6);
//Calculate the absolute value
a=abs((X6-Y)/X6);
P=1-a;
printf('\nMean of all the measurements = %.2f \n',Y)
printf('\nPrecision of 6th measurement = %.3f \n',P)