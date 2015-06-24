clc;
//page27
//problem 2.4
t=(-5:-1);
subplot(221)
plot2d(t,(%e)^t/2);
xtitle ( " Original signal " , " Time " , "g(t) " );
t=-t;
subplot(222)
plot2d(t,(%e)^-t/2);
xtitle ( " Time inverted signal" , " time " , "g(-t)" );