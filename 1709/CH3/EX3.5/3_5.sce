clc
//Initialization of variables
T1=560 //R
T2=3460  //R
m=28.02 //lb
cv=0.248
//calculations
function [q]=fun(T)
    q=9.47 - 3.29*10^3 /T +1.07*10^6 /T^2
endfunction
Q1=intg(T1,T2,fun)
Q2=m*cv*(T2-T1)
Error=(Q1-Q2)/Q1
//results
printf("Percentage error = %.1f percent",Error*100)
