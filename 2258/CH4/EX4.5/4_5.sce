clc();
clear;
// To calculate the average number of bohr magnetons
e=2.86;    //edge in armstrong
e=e*10^-10;        //edge in m
Is=1.76*10^6;    //magnetisation in amp/m
mewB=9.27*10^-24;   //1 bohr magneton in amp m^2
N=2/(e^3);    //density per m^3
mewbar=Is/N;
mew_bar=mewbar/mewB;
printf("average dipole moment is %f mewB",mew_bar);
