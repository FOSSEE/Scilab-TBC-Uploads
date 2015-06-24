//Page Number: 556
//Example 10.4
clc;
//Given,

q=2.5;
dh=1.58;
er=9;
f=10;
c=3D+8;

erff=((er+1)/2)+(((er-1)/2)*((1+(12/q))^(-1/2)));
vp=(c/sqrt(erff))*erff;
fe1=c/(sqrt(vp)*2*dh*q);
if f<fe1 then
    disp('Strip supports TEM mode only');
else
    disp('Strip does not support TEM mode only');
end


