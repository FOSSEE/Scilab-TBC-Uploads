//Ex 3.21
clc;clear;close;
format('v',6);
omega1=0.1;//rad/s
omega2=1;//rad/s
omega3=10;//rad/s
T1=1/sqrt(1+omega1^6);//Transfer function
T2=1/sqrt(1+omega2^6);//Transfer function
T3=1/sqrt(1+omega3^6);//Transfer function
fi1=-atand((2*omega1-omega1^3)/real(1-2*omega1^2));//degree
fi2=-atand((2*omega2-omega2^3)/real(1-2*omega2^2));//degree
fi3=-atand((2*omega3-omega3^3)/real(1-2*omega3^2));//degree
disp(fi1,T1,"Value of T & fi for 0.1 rad/s: ");
disp(fi2-180,T2,"Value of T & fi for 1 rad/s: ");
disp(fi3,T3,"Value of T & fi for 10 rad/s: ");

