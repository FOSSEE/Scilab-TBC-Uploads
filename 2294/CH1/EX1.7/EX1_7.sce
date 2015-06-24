//Example 1_7_<i>
//Sketch the following signal.
clc;
clear all;
t=-5:1/1000:5;
for i=1:length(t)
    if t(i)>1 then
        x(i)=0;
    else
        x(i)=1;
    end
end
f=scf(0);
plot2d(t,x);
plot(t,x,'red');
xtitle('Required figure','t','x(t)');
xgrid();
xs2jpg(0, 'problem1_7_i-plot.jpg');
//Example 1_7_<ii>
//Sketch the following signal.
clc;
t=-5:1/1000:5;
for i=1:length(t)
    if t(i)<1 then
        x(i)=0;
    else
        x(i)=1;
    end
end
for i=1:length(t)
    x1(i)=-2*x(i);
end
//figure
f=scf(0);
plot2d(t,x);
xtitle('required figure','t','x(t)');
xs2jpg(0, 'problem1.7.2-plot-a.jpg');
//figure
f=scf(1);
plot2d(t,x1);
plot(t,x1,'blue');
xtitle('Required figure','t','x1(t)');
xs2jpg(1, 'problem1.7.2-plot-b.jpg');

