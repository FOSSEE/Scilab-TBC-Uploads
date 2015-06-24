clear;
clc;
close;
disp("Example 11.9")

 g=9.8 //in m/s^2
 Is=421 //in s
 Qr=120000000
 v=5000 //in m/s
 c=g*Is
 disp(c,"(a)Effective exhaust speed c in m/s :")
 ep=2*(v/c)/(1+(v/c)^2)
 disp(ep,"(b)propulsive efficiency :")
 eo=c*v/Qr
 disp(eo,"(c)Overall efficiency :")