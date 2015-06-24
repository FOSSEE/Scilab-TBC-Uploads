//page 25
clear;
close;
clc;
E=eye(3,3);
E(2,:)=E(2,:)-2*E(1,:);
disp(E,'E=');
F=eye(3,3);
F(3,:)=F(3,:)+F(1,:);
disp(F,'F=');
disp(E*F,'EF=')
disp(F*E,'FE=')
disp('Here,EF=FE,so this shows that these two matrices commute')
//end