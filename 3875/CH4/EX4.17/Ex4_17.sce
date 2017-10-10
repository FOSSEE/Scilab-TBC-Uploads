clc;
clear;
f=4 //focal length of lens in m
myu=1.50 //refractive index
lambda=5460*10^-10 //wavelength in m
n=5 //fifth bright ring

//calculation
R=(myu-1)*2*f //radius of curvature in cm
D5=sqrt(2*(2*n-1)*lambda*R)

mprintf("The diameter of the fifth bright ring is = %1.5f cm",D5)
//The answer provided in the textbook is wrong.
