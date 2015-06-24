//Ex 3.26
clc;clear;close;
omega1=0;//rad/s
omega2=%inf;//rad/s
omega0=10^4;//rad/s(Assumed)
fi1=atand(omega2/omega0)-atand(omega2/-omega0);//degree
fi2=atand(omega1/omega0)-atand(omega1/-omega0);//degree
disp(fi1,"For omega=0, phase shift(degree)");
disp(fi2,"For omega=infinity, phase shift(degree)");
