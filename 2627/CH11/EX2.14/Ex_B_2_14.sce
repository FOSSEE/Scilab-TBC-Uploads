//Part B Ex 2.14
clc;clear;close;
format('v',9);
dec=34.6875;//given decimal value
i=floor(dec);//integer part
f=dec-i;//fraction part
i_bin=dec2bin(i);//binary equivalent of integer part
f_bin=' ';//for initializing(string)
for n=1:4
    t=2*f;
    if t>=1 then
        p(n)=1;
        f=t-1;
     end
if t<1 then
    p(n)=0;
    f=t;
end
f_bin=f_bin+string(p(n));//binary equivalent of fraction part
end;
bin=i_bin+'.'+f_bin;//Binary equivalent of complete no.
disp(bin,"Binary equivalent of complete no. is ");
