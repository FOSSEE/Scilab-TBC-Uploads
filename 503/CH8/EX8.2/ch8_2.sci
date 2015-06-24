//to determine voltage regulation by mmf method

clc;
pf=0.85;
P=150*10^6;
V=13*1000;
Iarated=P/(sqrt(3)*pf*V);
If=750;
Ifocc=810;
B=acosd(pf);
Ff=sqrt((Ifocc+If*sind(B))^2+(If*cosd(B))^2);
Ef=16.3*1000;
vr=Ef/V-1;
disp(vr*100,'voltage regulation(%)');