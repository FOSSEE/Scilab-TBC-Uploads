//Example 4.31//size and number of projector
clc;
clear;
close;
format('v',6)
watt=[300,500,1000,1500];
lum=[5000,9000,18000,27000];//
el=50;// in lux
dp=0.8;//depreciation factor
wlf=0.5;//waste light factor
uf=1.2;//utiliazation factor
l=60;// in meters
b=15;// in meters
lw=1000;// mscp in watts
a=l*b;//arean in m^2
tl=a*el//total lumens
lwp=((tl*uf)/(wlf*dp));//lumens reaching on the working plane
n = lwp/lum(2);//number of projector required
ang=2*atand(4.5/8);//size
disp(ceil(n+1),"number of projectors are,=")
disp(watt(2),"wattage is,(W)=")
disp(ceil(ang+1),"beam angle is,(degree)=")
disp(""+string(round(n)+1)+ " projectors of "+string(watt(2))+" watts each with beam angle of "+string(round(ang+1))+" degree will be required")
