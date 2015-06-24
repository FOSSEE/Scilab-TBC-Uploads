//Example 8.6

clear;

clc;

a0=3600;

f1=1*10^6;

f2=4*10^6;

f3=40*10^6;

fmin135=4.78*10^6;

fmin180=14.3*10^6;

gbp1=abs(a0/[(1+(%i*(fmin135/f1)))*(1+(%i*(fmin135/f3)))*(1+(%i*(fmin135/f3)))])-256;

gbp2=abs(a0/[(1+(%i*(fmin180/f1)))*(1+(%i*(fmin180/f3)))*(1+(%i*(fmin180/f3)))])-158.97561;

printf("|a(j*fmin135)|=%.d V/V",gbp1);

printf("\n|a(j*fmin180)|=%.1f V/V",gbp2);