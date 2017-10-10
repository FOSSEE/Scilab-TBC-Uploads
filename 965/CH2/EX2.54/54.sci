clc;
clear all;

disp("case 1:single layer of insulation")

r1=90/2;//mm outer radius of pipe
r2=r1+45;//mm outer radius of insulation 1
kA=0.05;// W/(m*C)
ho=8.4;// W/(m^2*C)
RthA=(log(r2/r1))/(kA*2*3.1416);
Rthconv=1000/(ho*r2*2*3.1416);
Rth=RthA+Rthconv;
disp("C/W per meter length",Rth,"total thermal resistance per meter length =")

disp("case 1:Two layers of insulation")

kB=0.07;// W/(m*C)
//Rthconv=1000/(ho*r3*2*3.1416);
//RthB=log(r3/r2))/(kB*2*3.1416)
//Rth=RthA+Rthconv+RthB
//Rth=2.206+2.274*(log(r3/0.09))+0.019/r3;
//2.206+2.274*(log(r3/0.09))+0.019/r3=2*RthA
disp("By trial and error,r3 =275 mm")
r3=275;//mm
t=r3-r2;
disp("mm",t,"Thickness of insulation t =")



