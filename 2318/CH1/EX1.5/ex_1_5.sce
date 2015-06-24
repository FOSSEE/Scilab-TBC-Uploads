//Example 1.5://error
clc;
clear;
close;
i=8.2;//in amperes
r=20;//ohms
p=i^2*r;//watts
nd=100;//divisions
ra=10;//range in amperes
rd1=ra/nd;//reading of one division
d=0.5;//divisions
per=((d*rd1)/i)*100;//possible ameter rwading error
amcr=1;//ammemeter constant error
ter=amcr+per;//total ammeter error
crr=-0.2;//construction error
ep=(((2*ter)+crr)/nd)*p;//
disp(p,"power is,(W)=")
disp(ep,"error in power is,(W)=")
