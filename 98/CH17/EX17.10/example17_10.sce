//Chapter 17
//Example 17_10
//Page 412

clear;clc;

q=50000;
x=20;
b=10;
n1=3;
n2=9;

//from the derivation
sckva1=(q/x+q*(n1-1)/(b*n1+x))*100;
sckva2=(q/x+q*(n2-1)/(b*n2+x))*100;
//When n is very large
sckva3=(q/x+q/b)*100;

printf("(i) Short circuit kVA with %d sections = %d kVA \n\n", n1, sckva1);
printf("(ii) Short circuit kVA with %d sections = %d kVA \n\n", n2, sckva2);
printf("(iii) Short circuit kVA when n is very large = %d kVA \n\n", sckva3);