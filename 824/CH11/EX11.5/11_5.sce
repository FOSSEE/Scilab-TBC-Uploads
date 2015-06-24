//clear//
clc
clear
exec("11.5data.sci")
X2=1-(1/exp((log(1/(1-X1)))*((T2/T1)^(5/12))));
disp("X2 =")
disp(X2)
