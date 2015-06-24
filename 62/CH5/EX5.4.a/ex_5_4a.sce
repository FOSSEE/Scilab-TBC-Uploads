clear;
close;
clc;
T=1;
t=0:0.01:1;
w0=2*%pi*T;
x=cos(w0*t);
for k=-5:5
    cc(k+6,:)=exp(-%i*k*w0*t);
    ck(k+6)=x*cc(k+6,:)'/length(t);
    if abs(ck(k+6))<0.01 then
    ck(k+6)=0;
    end
end