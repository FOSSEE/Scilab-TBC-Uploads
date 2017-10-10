//Eg-5.9
//pg-232

clear
clc

A = [0 1 1.5;-5 -0.5 1;-1 2 3.5];
z = [1;1;1];
lambda = zeros(3,1);
z_in = z;

for(i = 1:50)
    a = A*z;
    b = (sum(a.^2))^.5;
    lambda(1) = b;
      z = a/b;
      z0 = z;
end


B = A - lambda(1)*eye(3,3);
y = B*z_in;

for(i = 1:50)
    c = B*y;
    d = (sum(c.^2))^.5;
    lambda(2) = d;
      y = c/d;
      z1 = y;
end

C = (A - lambda(1)*eye(3,3))*(A - lambda(2)*eye(3,3));
u = C*z_in;

for(i = 1:50)
    e = C*u;
    f = (sum(e.^2))^.5;
    lambda(3) = f;
      u = e/f;
      z2 = u;
end

disp("eigen values")
disp(lambda)

disp("corresponding eigen vectors")
disp(z0)
disp(z1)
disp(z2)


//Note that the eigen vector corresponding to lambda value of 1 is not matching with that in the text book, the method followed here is giving correct answers for the other two eigen values. So the eigen vector given in the book is wrong.
