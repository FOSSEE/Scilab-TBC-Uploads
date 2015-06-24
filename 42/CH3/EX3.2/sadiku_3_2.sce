clear;
clc;
C1=integrate('x^2','x',1,0);//for y=0=z
C2=0;// as (az.ay)=0
C3=integrate('x^2 -1','x',0,1);
C4=integrate('-y-y^2','y',1,0);
C=C1+C2+C3+C4;
disp(C);