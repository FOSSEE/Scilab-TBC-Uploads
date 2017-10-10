//Ex 24

clc;
clear;
close;
MP=100; 
d1=20;d2=10;d3=5;
NetSp=((100-d1)/100)*((100-d2)/100)*((100-d3)/100)*MP;
NetDiscount=100-NetSp;
printf("The required discount is %3.2f percent",NetDiscount);
