//Caption: information rate
//Example 9.14
//page no 402
//Find information rate of the source
clc;
clear;
f=input("Enter the frequncy f=");
px1=1/8;
px2=1/8;
px3=3/8;
px4=3/8;

HX=px1*log2(1/px1)+px2*log2(1/px2)+px3*log2(1/px3)+px4*log2(1/px4);//entropy of the source
R=2*f*HX;//r=2*f;
printf("information rate \n\n \t R=  %.1f  bits/sec ",R);//f=signal bandwidth
