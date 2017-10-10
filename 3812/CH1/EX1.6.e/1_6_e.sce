clc ;
clear all;
t=-10:.001:10;
for i=1:length(t)
if t(i)<=-1/2 then
x(i)=1;
else
x(i)=0;
end
end
// f i g u r e
f=scf(0);
plot2d(t,x);
xtitle('Required figure','t','x(t)')
