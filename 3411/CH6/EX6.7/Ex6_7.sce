//Example 6_7
clc();
clear;
//To calculate the no of photons emitted by the ruby laser
p=1       //units in W
lamda=694.3*10^-9
h=6.63*10^-34
c=3*10^8
n=(p*lamda)/(h*c)
printf("The no of photons emitted by the ruby laser is n=")
disp(n)
