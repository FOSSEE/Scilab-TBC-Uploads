//clc();
clear;
//To estimate the heat required to raise the temperature
m=2;        //mass in k mol
TD=281;       //debye's temperature in K
A=%pi^4;
R=8.3*10^3;
function Q=f(T),Q=m*12*A*(R/5)*((T/TD)^3),endfunction
I=intg(10,50,f)
printf("the heat required in Joule is");
disp(I);
