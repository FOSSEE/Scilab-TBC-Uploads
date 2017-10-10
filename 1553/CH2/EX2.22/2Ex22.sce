
//chapter 9 Ex 13

clc;
clear;
close;

a=17/18; b=31/36; c=43/45; d=59/60;
v=[a b c d];
v=gsort(v,'lc','i');
mprintf("%.3f > %.3f >%.3f >%.3f ",v(4),v(3),v(2),v(1));
