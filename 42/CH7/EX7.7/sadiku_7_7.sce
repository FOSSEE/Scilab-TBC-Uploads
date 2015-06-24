clear;
clc;
disp('Vector potential A=-p^2/4');
Q=%pi/2,p1=1,p2=2,z1=0,z2=5
Y=.5*integrate('p','p',p1,p2)*integrate('1','z',z1,z2);
disp(Y,'Total magnetic flux= ')