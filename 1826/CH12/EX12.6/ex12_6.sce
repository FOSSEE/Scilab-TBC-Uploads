// Example 12.6, page no-353
clear
clc

alfe=17*10^-6///per K
t2=293 //K
t1=233 //K
delT=t2-t1
st=119//MPa
k=alfe*delT
printf("\nThe strain produced in te rod is %.2f * 10^-3",k*10^3)
E=(st*10^6)/k
printf("\nThe Youngs Modulus of the rod is %.1f GPa",E*10^-9)
