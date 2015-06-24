//Chapter 14
//Page 411
//Example 14.11
//stepbystep
clear;clc;
f = 60;
t_fault = 0.225;
H = 8;
Pm = 1.85;
n = 1:10;
t = 0:0.05:1;
delta(1) = 16.19;
y = 0.755;
del_t = t(2) - t(1);
k = 180 * f * del_t^2 / H;
Pa(1) = 1.6955 - (5.5023 * sin(delta(1) * %pi / 180 - y * %pi / 180));
kPa(1) = k * Pa(1) / 2;
del_delta(1) = kPa(1);
delta(2) = delta(1) + del_delta(1);
disp('Compuatation of Swing Curve for clearing at 0.225s')
printf("\nt,s \t delta(n)-y \t Pmaxsin \t Pa \t\t kPa \t\t del_delta(n) \t delta(n)")
printf("\n %.2f \t %.4f \t %.4f \t %.4f \t %.4f \t  %.4f",t(1),delta(1)-y,1.6955 - Pa(1),Pa(1),kPa(1),del_delta(1))
for m = 2:5
    Pa(m) = 1.6955 - (5.5023 * sin(delta(m) * %pi / 180 - y * %pi / 180));
    kPa(m) = k * Pa(m);
    del_delta(m) = del_delta(m-1) + kPa(m);
    delta(m+1) = delta(m) + del_delta(m);
    printf("\n %.2f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f",t(m),delta(m)-y,1.6955 - Pa(m),Pa(m),kPa(m),del_delta(m),delta(m))
end
y1 = 0.847;
for m = 6:17
    Pa(m) = 1.6696 - (6.4934 * sin(delta(m) * %pi / 180 - y1 * %pi / 180));
    kPa(m) = k * Pa(m);
    del_delta(m) = del_delta(m-1) + kPa(m);
    delta(m+1) = delta(m) + del_delta(m);
    printf("\n %.2f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f",t(m),delta(m)-y1,1.6696 - Pa(m),Pa(m),kPa(m),del_delta(m),delta(m))
end
