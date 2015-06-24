//chapter8,Example8_17,pg 210

grat=1/6000

f=30

n=2

lam1=5770*10^-8

lam2=5460*10^-8

dlam=lam1-lam2

lam=lam2

cos(theta)=sqrt(1-(((n*lam)/grat)^2))

dl=((n*f)/(grat*cos(theta)))*dlam

printf("linear separation of two spectral lines\n")

printf("dl=%.4f cm",dl)