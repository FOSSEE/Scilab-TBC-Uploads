//Caption: efficiency
//Example 9.44
//page no 436
//Find  efficiency of the code
clear;
clc;

px1=1/2;
px2=1/4;
px3=1/8;
px4=1/8;
n1=1
n2=2;
n3=3;
n4=3;

//information content of each symbol
Ix1=-log2(px1);
Ix2=-log2(px2);
Ix3=-log2(px3);
Ix4=-log2(px4);

HX=px1*log2(1/px1)+px2*log2(1/px2)+px3*log2(1/px3)+px4*log2(1/px4);
L=px1*n1+px2*n2+px3*n3+px4*n4;

n=HX/L;

printf("\n\tcode efficiency = %.2f  ",n*100);
disp("            %");
