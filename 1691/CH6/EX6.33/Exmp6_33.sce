//Example 6.33
clc
disp("B1 = 5*10^-2,  B2 = 10^-4,  B3 = 3*10^-6")
disp("These are the amplitudes of various frequency components")
d2=10^-4/(50*10^-2)
d3=(3*10^-6)/(50*10^-2)
d=sqrt((2*10^-4)^2+(6*10^-6)^2)*100
format(7)
disp(d2,"Therefore,  D2 = |B2|/|B1| =")
disp(d3,"Therefore,  D2 = |B3|/|B1| =")
format(5)
disp(d,"Therefore,  %D(in percentage) = sqrt(D2^2 + D3^2)*100 =")
