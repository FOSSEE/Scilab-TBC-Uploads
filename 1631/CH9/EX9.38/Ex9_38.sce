//Caption:  efficiency,redundancy
//Example 9.38
//page no 431
//Find code efficiency,redundancy
clear;
clc;
pa1=0.81;
pa2=0.09;
pa3=0.09;
pa4=0.01;
n1=1;
n2=2;
n3=3;
n4=3;

L=pa1*n1+pa2*n2+pa3*n3+pa4*n4;

HX2=pa1*log2(1/pa1)+pa2*log2(1/pa2)+pa3*log2(1/pa3)+pa4*log2(1/pa4);
n=HX2/L;

printf("\n\tcode efficiency = %.2f  ",n*100);
disp("            %");

r=(1-n);//code reduncy
printf("\n\n\tcode redundancy = %.1f ",r*100);
disp("            %");
