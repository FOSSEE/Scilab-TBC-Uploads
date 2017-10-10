//Example_a_9_5 page no:405
clc;
P=5000;
V=400;
f=50;
cos_pi=0.7;
pi=acosd(cos_pi);
sin_pi=sin(pi);
Il=P/(sqrt(3)*V*cos_pi);
Iph=Il;
Zph=V/(sqrt(3)*Iph);
Rph=Zph*cos_pi;
Xph=Zph*sin_pi;
//calculating line currents if one of the inductors is disconnected
Ir=V/(2*Zph);
Ib=Ir;
Iy=0;
disp("line currents if one of the inductors is disconnected");
disp(Ir,"the current Ir is (in A)");
disp(Ib,"the current Ib is (in A)");
disp(Iy,"the current Iy is (in A)");
//calculating line current if one of the inductor is short circuited
Ir=V/Zph;
Ib=Ir;
Iph=Ib;
Iy=2*Iph*cosd(60/2);
disp("line current if one of the inductor is short circuited");
disp(Ir,"the current Ir is (in A)");
disp(Ib,"the current Ib is (in A)");
disp(Iy,"the current Iy is (in A)");
