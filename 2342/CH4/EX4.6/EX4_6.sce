//Exa 4.6
format('v',6)
clc;
clear;
close;
// Given data
// Part (i)
T1= 25;// in °C
T2= 80;// in °C
// Formula Io2= Io1*2^((T2-T1)/10)
AntiFactor= 2^((T2-T1)/10);
disp(round(AntiFactor),"Anticipated factor for Ge is : ")
// Part (ii)
T1= 25;// in °C
T2= 150;// in °C
AntiFactor= 2^((T2-T1)/10);
disp(round(AntiFactor),"Anticipated factor for Si is : ")
