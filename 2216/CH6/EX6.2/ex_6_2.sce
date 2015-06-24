// Example 6.2:loss
clc;
clear;
close;
disp("part (a)")
format('v',5)
dya=0.1;//
n1=1.50;//refrative index
na=1;//
k1=n1/n1;//
k2=1;//
nf=((16*(n1)^2)/((n1+1)^4));//
nlat=(2/(3.14))*(acos(dya/2)-(dya/2)*(1-(dya/2)^2)^(1/2));//
nt=nf*nlat;//
lt=(-10*log10(nt));//in dB
disp(lt,"insertion loss at the joint in dB is")
disp("part (b)")
format('v',6)
dya=0.1;//
n1=1.50;//refrative index
na=1;//
k1=n1/n1;//
k2=1;//
nf=((16*(n1)^2)/((n1+1)^4));//
nlat=(2/(%pi))*(acos(dya/2)-(dya/2)*(1-(dya/2)^2)^(1/2));//
nt=k2*nlat;//
lt=(-10*log10(nt));//in dB
disp(lt,"insertion loss at the joint in dB is")

