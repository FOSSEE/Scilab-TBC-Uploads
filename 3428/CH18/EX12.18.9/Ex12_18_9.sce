//Section-12,Example-1,Page no.-SS.46
//To determine the glancing angle.
clc;
a=305
d_110=a/sqrt((1^2) + (1^2))
//n*lm=2*d*sin(B)
lm=150                              //wavelength of x-ray(pm)
B=(asin(lm/(2*d_110)))*(180/3.14)
disp(B,'Glancing angle(in degree)')


