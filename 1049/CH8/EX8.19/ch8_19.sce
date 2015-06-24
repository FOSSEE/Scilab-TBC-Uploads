clear;
clc;
t=20;
fos=2;    //factor of safety
t_c=t*fos;
n=1/3;
R=20;
C=n^2*t_c/(4*R*log(2));    printf("value of capacitor=%.5f uF",C);
//printing mistake in the answer in book.