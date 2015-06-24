clc;
i=20*10^-3;  //current
vd=1;  //voltage drop
t=10^-3;  //time in sec
q=i*t;  //charge
c=q/vd;  //capacitance
disp(c,"Capacitance in Farad = ");  //displaying result