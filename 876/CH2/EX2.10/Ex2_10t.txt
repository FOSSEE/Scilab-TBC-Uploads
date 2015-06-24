//caption:Find volume,percentage error and absolute error
//Ex2.10
clc
clear
close
a=0.80//side of the cube(in m)
er=0.5//possible error in measurement(in %)
V=(a*a*a)
disp(V,'volume(in meter^3)=')
%er=3*er
disp(%er,'percentage error(in %)=')
Aer=(%er*V)/100
disp(Aer,'absolute error(in meter^3)=')