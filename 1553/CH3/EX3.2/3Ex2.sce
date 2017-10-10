//chapter 3 Ex2
clc;
clear;
close;
n1=5/8; n2=7/12; n3=13/16; n4=16/29; n5=3/4;
V=[n1 n2 n3 n4 n5];
V=gsort(V,'lc','i');
mprintf("%.2f < %.2f< %.2f < %.2f < %.2f",V(1),V(2),V(3),V(4),V(5));
