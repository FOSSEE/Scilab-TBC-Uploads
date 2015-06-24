// Example 4.2;components of no load currents,magnetising and working components of exciting current
clc;
close;
clear;
// given 
format('v',6)
disp("part (a)")
nlw=2000;//no load input watts
pv=11000;//primary voltage
Iw=nlw/pv;//current in amperes
Io=0.6;//current in amperes
Imu=sqrt(Io^2-Iw^2);//current in amperes
disp(Iw,"iron loss current is, (A)=")
disp(Imu,"magnetising component is, (A)=")
pf=0.2;//power factpr
Io=0.5;//current in amperes
Iw=Io*(pf);//current in amperes
Imu=Io*sqrt(1-pf^2);//magnetising component in amperes
disp(" part (b)")
disp(Iw,"iron loss current is, (A)=")
disp(Imu,"magnetising component  is, (A)=")
