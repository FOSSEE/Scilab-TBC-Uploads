//Ex 3.25
clc;clear;close;
format('v',6);
omega=10^4;//rad/s
C=10;//nF
fi1=-30;fi2=-90;fi3=-120;fi4=-150;//degree
R1=tand(-fi1/2)/(C*10^-9*omega)/1000;//kohm
R2=tand(-fi2/2)/(C*10^-9*omega)/1000;//kohm
R3=tand(-fi3/2)/(C*10^-9*omega)/1000;//kohm
R4=tand(-fi4/2)/(C*10^-9*omega)/1000;//kohm
disp(R1,"For phase shift=-30 degree, Resistance(kohm) : ");
disp(R2,"For phase shift=-90 degree, Resistance(kohm) : ");
disp(R3,"For phase shift=-120 degree, Resistance(kohm) : ");
disp(R4,"For phase shift=-150 degree, Resistance(kohm) : ");
