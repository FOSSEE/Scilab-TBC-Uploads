// Example 7.5.2  
clc;
clear;
R=0.6;      //responsivity
Pin=15;     //optical power in microwatt
Ip=R*Pin;       //computing photocurrent
printf("\nPhotocurrent generated is %d microAmpere.",Ip);
