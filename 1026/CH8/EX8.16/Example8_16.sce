//chapter8,Example8_16,pg 209

n=2

grat=1/5000//transmission grating

lam=5893*10^-8

dtheta=(2.5*3.14)/(180*60)//change in angular displacement(in radian)

//(a+b)=grat

//dlam=((a+b)cos(theta)/n)dtheta

cos(theta)=sqrt(1-(((n*lam)/grat)^2))

dlam=(dtheta*grat*cos(theta))/n//difference in wavelength

f=30//focal length

dl=f*dtheta//linear separation

printf("difference between two yellow lines (in cm)\n")

disp(dlam)

printf("\nlinear separation\n")

printf("dl=%.4f cm",dl)