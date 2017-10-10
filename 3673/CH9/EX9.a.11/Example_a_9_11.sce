//Example_a_9_11 page no:410
clc;
V=400;
P=2000;
f=50;
pf=0.8;
Vph=V/sqrt(3);
Il=P/(sqrt(3)*V*pf);
Iph=Il;
pi=acosd(pf);
sin_pi=sind(pi);
Zph=Vph/Iph;
Rph=Zph*pf;//Rph varies slightly with text book because Zph is rounded off in text book
Xph=Zph*sin_pi;//Xph varies slightly with text book because Zph is rounded off in text book
disp(Rph,"the resistance of each phase is (in ohm)");
disp(Xph,"the reactance of each phase is (in ohm)");
