clear ;
close;
clc;
t=0:0.01:50;
x1=cos(4*t);
x2=sin(6*t);
w1=4;
w2=6;
w=int32([w1,w2]);
w0=gcd(w);
x=x1+x2;
for k=-5:5
    cc(k+6,:)=exp(-%i*k.*t*2);
    ck(k+6)=x*cc(k+6,:)'/length(t);
    if abs(ck(k+6))<0.1 then
    ck(k+6)=0;
    end
end 