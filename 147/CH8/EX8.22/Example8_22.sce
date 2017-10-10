close();
clear;
clc;
//For hfb, at Vcbq = 6.1 V
dic = 3.97-2.0;
die = 4-2;
hfb = dic/die;
//For hob at Ieq = 3 mA
dic = 3.05-2.95;
dveb = -10-(-2);
hob = dic/dveb;
mprintf('hfb = %0.3f\nhob = %0.1f micro S',hfb,hob*10^(3));