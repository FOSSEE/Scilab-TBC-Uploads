//Eg-5.8
//pg-231

clear
clc

A=[1 2 4;3 1 2;4 2 5];
invA=inv(A);
z=[1;1;1];
for i=1:25
    a=invA*z;
    b=(sum(a.^2))^.5;
      z=a/b;
end

la_d=b;
minval=1/b;
disp("minimum eigen value of A")
disp(minval)
