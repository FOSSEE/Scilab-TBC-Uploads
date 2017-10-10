clc;
t=0.018;
I=50;
D=(I^2)*t;
if (D <= 145) then
    disp('device can handle this surge');
end
