//cooley-Tukey method
//example 4.20
//page 168
clc;clear;close;
f=[1,2,3,4,4,3,2,1];
F1(1,1)=f(1)+f(5);
F1(1,2)=f(1)-f(5);
F1(2,1)=f(3)+f(7);
F1(2,2)=f(3)-f(7);
F1(3,1)=f(2)+f(6);
F1(3,2)=f(2)-f(6);
F1(4,1)=f(4)+f(8);
F1(4,2)=f(4)-f(8);
printf('the solutions after first key equation\n\n')
disp(F1);
F2(1,1)=F1(1,1)+F1(2,1);
F2(1,2)=F1(1,1)+F1(2,1);
F2(2,1)=F1(1,2)+%i*F1(3,2);
F2(2,2)=F1(3,2)-%i*F1(4,2);
F2(3,1)=F1(1,1)-F1(2,1);
F2(3,2)=F1(1,1)-F1(2,1);
F2(4,1)=F1(1,2)+%i*F1(2,2);
F2(4,2)=F1(3,2)-%i*F1(1,2);
printf('the solutions after second key equation\n\n')
disp(F2);

W=[1,(1-%i)/sqrt(2),-%i,-(1+%i)/sqrt(2),-1,-(1-%i)/sqrt(2),%i,(1+%i)/sqrt(2)];
F3(1)=F2(1,1)+F2(1,2);
F3(2)=F2(2,1)+W(2)*F2(2,2);
F3(3)=F2(3,1)+F2(3,2);
F3(4)=F2(4,1)+W(4)*F2(4,2);
F3(5)=F2(3,1)+F2(3,2);
F3(6)=F2(2,1)+W(6)*F2(2,2);
F3(7)=F2(3,1)+F2(3,2);
F3(8)=F2(4,1)+W(8)*F2(4,2);
printf('the solutions after third key equation\n\n')
disp(F3);




