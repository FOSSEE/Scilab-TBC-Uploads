clear;
clc;
RPM = 180;// RPM
HP = 130;
f = 9000;// lb/in^2
alpha = 1;//degree
l = 10;// feet
N = 6000;// tons/in^2
T = 33000*HP/(2*%pi*RPM);// lb-feet
D1 = (16*T*12/(f*%pi))^(1/3);// inches
D2 = (T*12*l*12*32*alpha*180/(%pi*N*%pi*2240))^(1/4);// inches
if D1 > D2 then
    printf('D = %d inches will be suitable for the shaft',round(D1));
else
    printf('D = %d inches will be suitable for the shaft',round(D2));
end
