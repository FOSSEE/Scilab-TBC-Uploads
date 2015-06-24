// Example 2.20 page no-74
clear
clc
na=3* 10^14 // /cm^3
nd= 2*10^14 // /cm^3
ni= 2.5*10^13  // /cm^3

k=na-nd
n=(-k+sqrt(k^2+4*ni^2))/2
printf("\nn=%.1f*10^18 electrons/m^3\np=%.2f*10^19 holes/m^3\n\nas p > n, it is p-type semiconductor",n/10^12,ni^2/n*10^-13)
