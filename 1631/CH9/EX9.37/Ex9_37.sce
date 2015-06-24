//Caption:  efficiency,redundancy
//Example 9.37
//page no 430
//Find code efficiency,redundancy
clear;
clc;
px1=0.9;
px2=0.1;
n1=1;
n2=1;
L=px1*n1+px2*n2;// code leght
HX=px1*log2(1/px1)+px2*log2(1/px2);
n=(HX/L);// code efficiency

printf("\n\tcode efficiency = %.2f ",n*100);
disp("            %");

r=(1-n);//code reduncy
printf("\n\n\tcode redundancy = %.2f ",r*100);
disp("            %");
