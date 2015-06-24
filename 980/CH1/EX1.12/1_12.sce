clc;
clear;
format('v',11);
A=[4 3 0];
B=[3 4 0];
mod_A=sqrt(A(1)^2+A(2)^2+A(3)^2);
mod_B=sqrt(B(1)^2+B(2)^2+B(3)^2);
U1=A(1,2)*B(1,3)-A(1,3)*B(1,2);
U2=A(1,3)*B(1,1)-A(1,1)*B(1,3);
U3=A(1,1)*B(1,2)-A(1,2)*B(1,1);
U=[U1 U2 U3];
disp(U,"A*B=");
A.B=A(1)*B(1)+A(2)*B(2)+A(3)*B(3);       //dot product
theta=acosd(A.B/(mod_A*mod_B));          //angle between A and B
mod=mod_A*mod_B*sind(theta);
disp(mod,"mod_(A*B)");
disp("and is perendicular to A and B both","hence |A*B|=|A|*|B|*sin(theta)");
