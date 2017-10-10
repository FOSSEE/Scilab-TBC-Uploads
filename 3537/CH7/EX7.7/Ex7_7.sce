//Example 7_7
clc();
clear;
//To calculate the dispersion and bandwidth length product
L=10                        //units in Km
n=1.55
delta=0.026
C=3*10^5                   //units in meter per second
T=(L*n*delta)/C*10^9
printf("The total dispersion is %.1f ns",T)
l=1/(2*T*10^-9)*10
printf("\nThe bandwidth length product is %.2f HZ-Km",l)
//in text book answer is wrong as 7044*10^5 correct answer is 3722084.37
