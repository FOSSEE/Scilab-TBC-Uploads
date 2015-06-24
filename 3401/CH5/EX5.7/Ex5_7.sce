clc

I=10^-3 //A
Bz=5*10**-2 //500gauss
e=1.6810*10**-19 //C
Vh=-6.25*10^-3 //V
Vx=12.5 //V
W=10**-4//m
d=10**-5 //m

u=-(I*Bz)/(e*Vh*d)
disp(u,"electron concemtration in m^-3 is= ")

un=(I*I)/(e*Bz*Vx*W*d)
disp(un,"electron mobility in /Vs is=")//     textbook ans is wrong
