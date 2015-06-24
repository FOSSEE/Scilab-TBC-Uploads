clc;
clear;
v1=100;//mi/hr
ht=10000;//ft
//from standard table for static pressure at an altitude
p1=1456//lb/ft^2(abs)
P1=1456*0.006947;//psi
d=0.001756;//slugs/ft^3
//1 mi/hr = 1.467 ft/s 
p2=p1+(d*(v1*1.467)^2/2);//lb/ft^3
//in terms of gage pressure p2g
p2g=p2-p1;//lb/ft^2
//1lb/ft^2 = 0.006947 psi
P2=p2*0.006947;//psi
P2g=p2g*0.006947;//psi
//pressure difference indicated by the pitot tube = pdiff
pdiff=P2-P1;//psi
disp("psi",P1,"Pressure at point 1 =")
disp("psi",P2g,"Pressure at point 2 in terms of gage pressure=")
disp("psi",pdiff,"pressure difference indicated by the pitot static tube=")
v1=0:1:600;
for i=0:600
   prat(i+1)=p1/(p1+(d*(i*1.467)^2/2));
end
plot2d(v1,prat,rect=[0,0,600,1]);
xtitle("v1 vs p1/p2","v1, mph","p1/p2")