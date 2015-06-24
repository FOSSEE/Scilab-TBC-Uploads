//Example 18 //speed
clc;
clear;
close;
sa=332;//m/s
pa=16;//density of air
ph=1;//density of hydrogen
vn=sa*sqrt(pa/ph);//m/s
t1=0;//degree celsius
t2=546;//degree celsius
t1k=0+273;//kelvin
t2k=t2+273;//kelvin
v2=vn*sqrt(t2k/t1k);//m/s
disp(vn,"speed of sound in first case is ,(m/s)=")
disp(v2,"speed of sound in second case is,(m/s)=")
