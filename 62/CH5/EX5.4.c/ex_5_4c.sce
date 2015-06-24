clear ;
clear cc;
close;
clc;
t=0:0.01:20;
x=cos(2*t+%pi/4);
w0=2*%pi*1;
for k=-5:5
    cc(k+6,:)=exp(-%i*k*2*t);
    ck(k+6)=x*cc(k+6,:)'/length(t);
    if abs(ck(k+6))<0.1 then
    ck(k+6)=0;
    end
end 