//Example 3.10: value of unknown resistance
clc;
clear;
close;
ra=1200;//ohms
rb=ra/1600;//ohms
r1=800*rb;//ohms
r2=r1/1.25;//ohms
r3=0.5*rb;//ohms
rx=((r2/r1)*r3);//ohms
disp(rx,"unknown resistance is,(Ohm)=")
