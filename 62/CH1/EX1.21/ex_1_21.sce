//ex_21  to check if u(-t)={1 for t<0 and 0 for t>0}
clear;
clc;
close;
t=-10:1/100:10;
for i = 1:(length(t))
    if t(i)<0  then
        x(i)=0
    else
        x(i)=1
    end
end
figure
a=gca();
plot(t,x)
xtitle('u(t)','t')
a.data_bounds=[-10,-1;10,2];
figure
a=gca();
plot(t,x($:-1:1))
xtitle('u(-t)','t')
a.data_bounds=[-10,-1;10,2];
