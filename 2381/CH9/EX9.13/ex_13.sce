//Example 13// length,amlitude,pressure
clc;
clear;
close;
f=440;//Hz
v=330;//m/s
l=((5*v)/(4*f))*100;//cm
disp(l,"length (L) is ,(cm)=")
ang=cos((2*%pi)/8);//
disp("maximum pressure variation is at node = ΔPo*"+string(ang)+" and minimum at antinode =0")
pmax=0;//
pmin=0;//
disp("at antinode pressure variation is Pmax= "+string(pmax)+" and Pmin= "+string(pmin)+"")
