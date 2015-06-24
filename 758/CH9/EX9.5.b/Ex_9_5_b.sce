//Example 9.5.b
clc;clear;close;
z=poly(0,'z');
s=poly(0,'s');
Hz=3*z*(5*z-2)/(z+1/2)/(3*z-1);
H=pfss(Hz/z);
for k=1:length(H)
    H(k)=clean(H(k));
    H1(k)=z*horner(H(k),z);
end
disp(Hz,'System Function H(z)=');
disp(H1,'System Function for parallel realisation Hk(z)=');