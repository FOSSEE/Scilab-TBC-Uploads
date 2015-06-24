//example 4.5
clc; funcprot(0);
// Initialization of Variable
V=12;
Vp=5;
R=10;
pi=3.1428;
//calculation
Ip=Vp/R;
Il=Ip/2^.5;
Pl=(Vp*Ip)/2;
disp(Pl,"power delivered in watt")
Id=Ip/pi;
disp(Id*1000,"dc supply current in mA")
Pt=2*V*Ip/pi;
disp(Pt,"total power in W")
Pic=Pt-Pl;
disp(Pic,"IC power in W")
clear()
