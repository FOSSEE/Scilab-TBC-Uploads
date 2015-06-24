//Example 1.14<i>
//Find whether the following signal is periodic or not
clc;
n=-10:10;
x=cos(2*%pi*n);
subplot(321)
plot2d(n,x);
f=(2*%pi)/(2*%pi);//where f is the no of cycles/sample.
N=1/f;//where N is the no of samples per cycle.
disp('samples',N,'(a)The given signal is periodic');
//Example 1.14<ii>
//Find whether the following signal is periodic or not.
clc;
n=-20:20;
x=exp(%i*6*%pi*n);
subplot(322)
plot2d3(n,x);
f=(6*%pi)/(2*%pi);//where f is the no of cycles per sample.
N=1/f;//where N is the no of samples per cycle.
disp('samples',N,'(b)the given signal is periodic');
//example 1.14<1v>
//Find whether the given signal is periodic or not
clc;
n=-30:30;
x=exp(%i*(2*%pi/3)*n)+exp(%i*(3*%pi/4)*n);
subplot(323)
plot2d3(n,x);
disp('(c)The given signal is periodic');
//Example 1.14<v>
//Find whether the given signal is periodic or not;
clc;
n=-20:20;
x=exp(%i*(3*%pi/5)*(n+1/2));
subplot(324)
plot(n,x);
f=(3*%pi/5)/(2*%pi);//where f is the no of cycles per sample.
N=1/f;//where n is the no of samples per cycle.
disp('samples',N,'(d)the given signal is periodic');
//Example1.14<vi>
//whether the given signal is periodic or not
clc;
n=-40:40;
x=12*cos(20*n);
subplot(325)
plot(n,x);
f=20/(2*%pi);//where f is the no of cycles per sample
N=1/f;//where n is the no of sample per cycle
disp('samples',N,'(e)the given signal is not peridic');

disp('In the figure we have the plots of part (a) - (d) in clockwise order strating from the top left');


