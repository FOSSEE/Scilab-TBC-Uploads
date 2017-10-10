//Example 5_10
clc();
clear;
//To calculate the lattice constant
h=6.63*10^-34      //Plancks Constant
m=1.804*10^-27
KB=1.38*10^-23
T=300
lamda=h/sqrt(3*m*KB*T)            //units in mts
n=2
a=(sqrt(3)*lamda)/2         //units in mts
printf("Lattice constant a=");
disp(a);
printf("mts")
