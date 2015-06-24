clear;
clc;
r=500e3;
x=4.75/100;
fault=r/x;
fault=fix(fault/1e5)*1e5;
mprintf("the fault level on LT side=%dkVA",fault/1e3);
