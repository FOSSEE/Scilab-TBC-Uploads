//chapter 9 Ex 14

clc;
clear;
close;

a=nthroot(6,4); b=sqrt(2); c=nthroot(4,3);
v=[a b c];
v=gsort(v,'lc','i');
mprintf("Largest number is %.3f",v(3));
