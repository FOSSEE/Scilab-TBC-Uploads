//Example 2_9
clc();
clear;
//To calculate the resolving power and grating element
sintheta1=0.3
sintheta2=0.2
lamda=5000 //units in A
e=(lamda/(sintheta1-sintheta2))*10^-8  //units in cm
width=2.5  //units in cm
n=width/e    //units in cm
resolvingpower=2*n
printf("Grating element is e=%.5f cm\n",e)
printf("Resolving power=%d",resolvingpower)
