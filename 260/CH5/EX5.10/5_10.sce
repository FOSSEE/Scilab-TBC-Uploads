//Eg-5.10
//pg-235

clear
clc

A=[1 0.5 .5;0.5 0.5 0;0.5 0 1];
z=[1;1;1];
 for i=1:50
    a=A*z;
    b=(sum(a.^2))^.5;
      z=a/b;
      z0=z;
end

B=A-(b*z*z');
 for i=1:50
    c=B*z;
    d=(sum(c.^2))^.5;
      z=c/d;
      z1=-z;
end

C=B-(d*z1*z1');
 for i=1:50
    e=C*z;
    f=(sum(e.^2))^.5;
      z=e/f;
      z2=z;
end

disp("eigen values")
disp(b)
disp(d)
disp(f)
disp("corresponding eigen vectors")
disp(z0)
disp(z1)
disp(z2)

