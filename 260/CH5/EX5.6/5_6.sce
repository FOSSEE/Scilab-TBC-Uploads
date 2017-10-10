//Eg-5.6
//pg-225

clear
clc

A=[1 2 4;3 1 2;4 2 5];
 z=[1;1;1];
for i=1:7
    printf('iteration number=%f\n',i);
    a=A*z;
    b=(sum(a.^2))^.5;
    printf('dominant eigen value=%f\n',b);
      z=a/b;
    printf('z=%f\n',z);
end

disp("from iterations dominant eigen value converged to ")
disp(b)
disp("after 7 iterations")
disp("its value is positive from equation 30");