//example 12.4
clc; funcprot(0);
Nc=9;
Ap=%pi/4*1.5^2;
cu=105;
Qpnet=Ap*cu*Nc;
disp(Qpnet,"net ultimate bearing point capacity in kN");
//part2
alpha=0.4;
Ds=1.5;
p=%pi*Ds;
Qs=alpha*p*(50*8+105*3);
disp(Qs,"skin resistance in kN");
//part3
FS=3;
Qu=Qpnet/FS+Qs/FS;
disp(Qu,"working load in kN");

