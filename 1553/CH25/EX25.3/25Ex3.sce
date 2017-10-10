//Ch25_Ex3
clc;
clear;
close;
volume=12.8;      //Given
x=poly(3,"x");
40*x*5*x*x==12.8;    //volume=l*b*h and l=40*x, h=5*x, b=x

//polynomial is 200*x^3-12.8=0;
//let s=x^3
s=12.8/200;
s=nthroot(s,3);

b=s*100;    //converting meter into centimeter
printf("The breadth is: %d cm",b);

