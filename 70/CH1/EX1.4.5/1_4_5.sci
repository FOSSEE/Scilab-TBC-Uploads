//page 25
clear;
close;
clc;
E=eye(3,3);
E(2,:)=E(2,:)-2*E(1,:);
disp(E,'E')
F=eye(3,3);
F(3,:)=F(3,:)+F(1,:);
disp(F,'F=');
G=eye(3,3);
G(3,:)=G(3,:)+G(2,:);
disp(G,'G')
disp(G*E,'GE=')
disp(E*G,'EG=')
disp('Here EG is not equal to GE,Therefore these two matrices do not commute and shows that most matrices do not commute.')
disp(G*F*E,'GFE=')
disp(E*F*G,'EFG=')
disp('The product GFE is the true order of elimation.It is the matrix that takes the original A to the upper triangular U.')
//end