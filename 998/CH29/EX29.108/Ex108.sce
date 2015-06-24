//Ex:108
clc;
clear;
close;
g_gc=10^(50/10);
a_c=4.5;// coverage angle in degree
a_b=17.34;// beam angle in degree
g_sb=g_gc*(a_b/a_c)^2;
printf("The gain of spot beam antenna=%f db", 10*log(g_sb)/log(10));