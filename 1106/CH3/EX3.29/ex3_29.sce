// Example 3.29, page no-168
clear
clc

R1=560
R3=560
Rf=5.6*10^3
R2=Rf
Vo1=-2
Ri=2*10^6
Vo2=-1

// Part 1
Ad=1+Rf/R1
printf('\nAd= %d', Ad)

// Part 2
A=200000
Ri1=Ri*(1+ (A*R2)/(R2+R3))
Ri1=Ri1/10^9
printf('\nRi1=%.1f Gohm', Ri1)

Ri2=Ri*(1+ (A*R1)/(R1+Rf))
Ri2=Ri2/10^9
printf('\nRi2=%.2f Gohm', Ri2)

// Part 3
Vid=Vo2-Vo1
Vo=(1+Rf/R1)*Vid
Vo=Vo
printf('\nVo=%d V',Vo)


