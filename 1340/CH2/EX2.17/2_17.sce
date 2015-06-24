clc;
syms M1 M2 K1 K2 K3 fv1 fv2 fv3 X1 X2 F s delta;
A = [M1*s^2+s*(fv1+fv3)+(K1+K2) -(fv3*s+K2);-(fv3*s+K2) M2*s^2+s*(fv3+fv2)+(K3+K2)];
B = [X1;X2];
C = [F;0];
B = inv(A)*C;

disp(B(2)/(F),"X2(s)/F(s)="); 