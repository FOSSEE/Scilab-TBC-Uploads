//chapter 9 Ex 13

clc;
clear;
close;

a=sqrt(2); b=nthroot(3,3);
v=[a b];
v=gsort(v,'lc','i');
mprintf("%.3f > %.3f i.e b>a",v(2),v(1));
