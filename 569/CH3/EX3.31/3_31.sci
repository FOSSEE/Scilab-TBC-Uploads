//to point out the reading that can be rejected by chavenets criterion

clc;
x=[5.3 5.73 6.77 5.26 4.33 5.45 6.09 5.64 5.81 5.75]*10^-3;
d=[-.313 .117 1.157 -.353 -1.283 -.163 .477 .027 .197 .137]*10^-3;
n=10;
X=sum(x)/n;
s=sqrt(sum(d^2)/(n-1));
a=abs(d)/s;disp(a);


for i=1:10,

if a(i)>1.96 then
    disp(x(i),'rejected value');
end 
  end