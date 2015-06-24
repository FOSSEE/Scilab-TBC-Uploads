//Example 1.8.<i>
//Sketch the following signal
clc;
clear all;
t=-10:.001:10;
for i=1:length(t)
    if t(i)>=-2 & t(i)<3 then
        x(i)=1;
    else
        x(i)=0;
    end
end
//figure
f=scf(0);
plot2d(t,x);
xtitle('Required figure','t','x(t)');
xs2jpg(0, 'EX1_8_1-plot.jpg');
//Example 1.8.<ii>
//Sketch the following signal.
clc;
clear all;
t=-10:.001:10;
for i=1:length(t)
    if t(i)>=0 & t(i)<=2 then
        x(i)=1;
    else
        x(i)=0;
    end
end
//figure
f=scf(0);
plot2d(t,x,1);
xtitle('Required figure','t','x(t)');
xs2jpg(0, 'EX1_8_2-plot.jpg');



