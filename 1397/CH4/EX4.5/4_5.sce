//clc();
clear;
//To determine average number of Bohr magnetons
Is=1.96*10^6;         //saturation magnetisation in amp/m
a=3;            //cube edge of iron
A0=3*10^-10;       //A0 in m
mewB=9.27*10^-24;        //bohr magneton in amp/m^2
N=2/(A0^a);
mewbar=Is/N;
mewAB=mewbar/mewB;
printf("average number of bohr magnetons is %f Bohr magneton/atom",mewAB); 
