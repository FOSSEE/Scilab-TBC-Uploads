clear ;
close;
clc;
t=0:0.01:50;
x=(sin(t))^2;
for k=-5:5
    cc(k+6,:)=exp(-%i*k*2*t);
    ck(k+6)=x*cc(k+6,:)'/length(t);
    if abs(ck(k+6))<0.1 then
    ck(k+6)=0;
    end
end 