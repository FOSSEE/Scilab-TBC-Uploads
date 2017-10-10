//chapter 3 Ex3
clc;
clear;
close;
n1=3/5; n2=4/7; n3=8/9; n4=9/11; 
V=[n1 n2 n3 n4];
V=gsort(V,'lc','i');
mprintf("%.2f > %.2f> %.2f > %.2f",V(4),V(3),V(2),V(1));
