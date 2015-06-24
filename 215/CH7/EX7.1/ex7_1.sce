clc
syms s t
//part(a)
i=diff(5*s^0,s)
disp(i,'i=')
//prt(b)
i1=diff(4*sin(3*t),t)
t=-2:.1:5
 plot (t,12*cos(3*t))
xtitle('i vs t','t(s)','i(A)')