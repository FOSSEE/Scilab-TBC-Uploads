//Eg-5.7
//pg-230

clear
clc

A=[0 1 1 1;1 0 1 1;1 1 0 1;1 1 1 0];
 z=[1;0;0;0];
 for i=1:20
    printf('iteration number=%f\n',i);
    a=A*z;
    b=(sum(a.^2))^.5;
    printf('dominant eigen value=%f\n',b);
      z=a/b;
    printf('z=%f\n',z);
end

disp("from iterations dominant eigen value converged to ")
disp(b)
disp("after 20 iterations")


if round((A-b*eye(4,4))*z)==0 then
    disp("dominant eigen value is positive")
else
    disp("dominant eigen value is negative")
end
