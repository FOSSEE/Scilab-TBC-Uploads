//Example 6.26
clc
disp("(i) As single transistor is used, even harmonic components will not get eliminated")
d2=1000/120
d3=400/120
d4=200/120
d5=100/120
format(5)
disp(d2,"  D2(in percentage) = |B2| / |B1| =")
disp(d3,"  D3(in percentage) = |B3| / |B1| =")
format(6)
disp(d4,"  D4(in percentage) = |B4| / |B1| =")
disp(d5,"  D5(in percentage) = |B5| / |B1| =")
disp("The total harmonic distortion is,")
disp("%D = sqrt(D2^2 + D3^2 + D4^2 + D5^2) * 100")
d=sqrt((0.0833^2)+(0.0333^2)+(0.01667^2)+(0.00833^2))*100
format(7)
disp(d,"Therefore,  %D(in percentage) =")
disp("(ii) When identical second transistor is used, then all even harmonics get eliminated. So only D3 and D5 will present")
dp=sqrt((0.033^2)+(0.00833^2))*100
disp(dp,"Therefore,  %D(in percentage) = sqrt(D3^2 + D5^2)*100 =")
