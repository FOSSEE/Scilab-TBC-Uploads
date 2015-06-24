clc;
r=1;  //reisstance in Ohm
p1=1/4;  //power for 1 Watt
p2=(2*2)/4;  //power for 2 Watt
p3=(3*3)/4;  //power for 3 Watt
p4=(4*4)/4;  //power for 4 Watt
tp=p1+p2+p3+p4;  //calculating total power
p=sqrt(tp);  //calculating rms value
disp(p,"RMS value in volt = ");  //displaying result