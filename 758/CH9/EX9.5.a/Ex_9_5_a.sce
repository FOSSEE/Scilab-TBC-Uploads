//Example 9.5.a
clc;clear;close;
z=poly(0,'z');
s=poly(0,'s');
Hz=3*(2*z^2+5*z+4)/(2*z+1)/(z+2);
H=pfss(Hz/z);
for k=1:length(H)
    H(k)=clean(H(k));
    H1(k)=z*horner(H(k),z);
disp(H1(k),'System Function for parallel realisation Hk(z)=');
end
disp(Hz,'System Function H(z)=');