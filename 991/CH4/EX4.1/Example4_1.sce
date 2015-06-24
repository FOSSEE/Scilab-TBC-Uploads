//Example 4.1.
clc
un1=3800 //mobility of free electrons in pure germanium
up1=1800 //mobility of free holes in pure germanium
un2=1300 //mobility of free electrons in pure silicon
up2=500 //mobility of free holes in pure silicon
q=1.6*10^-19
nig=2.5*10^13
nis=1.5*10^10
format(7)
sigma1=q*nig*(un1+up1)
disp("(i) The intrinsic conductivity for germanium,")
disp(sigma1,"sigmai(S/cm) = q*ni*(un+up) = ")
format(8)
sigma2=q*nis*(un2+up2)
disp("(ii) The intrinsic conductivity for silicon,")
disp(sigma2,"sigmai(S/cm)= q*ni*(un+np) =")