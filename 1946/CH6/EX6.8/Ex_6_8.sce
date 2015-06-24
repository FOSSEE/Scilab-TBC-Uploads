// Example 6.8;//external power efficiency
clc;
clear;
close;
nt=0.18;//total efficiency of injection laser
Eg=1.43;//Energy gap in elecron volt
V=2.5;//votls
next=round(nt*(Eg/V)*100);//EXTERNAL EFEICIENCY 
disp(next,"external efficiency percentage is")
