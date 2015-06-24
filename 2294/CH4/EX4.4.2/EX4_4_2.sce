//Example 4.4 <ii>
//Find the step response of the following impulse response.
clc;
t=-1:.01:1;
for i=1:length(t)
    if t(i)==0 then
        del1(i)=1;del2(i)=0;
    elseif t(i)==1 then
        del1(i)=0;del2(i)=1;
    else
        del1(i)=0;del2(i)=0;
end
h(i)=del1(i)-del2(i);
if t(i)<0 then
    u(i)=0;
else
    u(i)=1;
end
end
s=convol(h,u);
t1=-10:.05:10;
f=scf(0);
plot(t1,s,'red');
xtitle('s[t]');
xs2jpg(0, 'EX4_4_2-plot-a.jpg');
