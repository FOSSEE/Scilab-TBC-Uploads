// Example 12.7, page no-354
clear
clc

lo=0.35//m
alfe=23.6*10^-6///per K
t2=358 //K
t1=288 //K
delT=t2-t1
ym=69//GPa
k=alfe*delT
printf("\nThe strain produced in te rod is %.3f * 10^-3",k*10^3)
E=ym*k*10^9
printf("\nThe compressive stress produced in Al rod is %.3f GPa",E*10^-9)
