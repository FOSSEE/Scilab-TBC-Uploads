//example 4 pagenumber 140
clear
v1=20;//volt
i1=((v1)/(200+1))*10^-3;
disp('current   =   '+string(i1)+'ampere');
//greater than 20
vone=16;
r=vone/i1;
r1=r-1*10^3;
r11=200*10^3-r1;
disp('resistance   =   '+string(r)+'ohm');
disp("r1   =   "+string((r1))+"ohm");
disp("r2   =   "+string((r11))+"ohm");


