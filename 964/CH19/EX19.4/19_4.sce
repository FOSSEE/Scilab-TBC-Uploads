clc;
clear;
s=[0.0002 0.0002 0.0005 0.0005 0.001 0.001];
r=[0.2 0.5 0.2 0.5 0.2 0.5];
u=[0.25; 0.5; 0.4; 0.75; 0.5; 1];
logs=log10(s);
logr=log10(r);
logu=log10(u);
for i=1:6
    m(i,1)=1;
    m(i,2)=logs(i);
    m(i,3)=logr(i);
end

a=m\logu;
disp(10^a(1),"alpha=")
disp(a(2),"sigma=")
disp(a(3),"rho=")