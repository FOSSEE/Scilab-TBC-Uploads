clc();
clear;
// To calculate the average number of Bohr magnetons
Is=1.96*10^6;     //saturation magnetisation in amp/m
a=3;     //cube edge of iron in armstrong
a=a*10^-10;    //cube edge of iron in m
mew_b=9.27*10^-24;     //bohr magneton in amp/m^2
n=2;    //number of atoms per unit cell
N=n/(a^3);
mewbar=Is/N;
mew_ab=mewbar/mew_b;
printf("average number of Bohr magnetons is %f bohr magneton per atom",mew_ab);
