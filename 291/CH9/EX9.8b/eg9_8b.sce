x = [0.5 1 1.5 2 3 4 5 6 8 10];
y= [15 15.1 16.5 19.9 27.7 29.7 26.7 35.9 42 49.4];
for i=1:10
    w(i) = 1/x(i);
end
//disp(w)
n = 10;
p = zeros(2,2);
q = zeros(2, 1);
p(1, 1) = sum(w);
p(1,2) = n;
p(2,1) = n;
p(2,2) = sum(x);
for i=1:10
    new(i) = w(i)*y(i)
end

q(1,1)= -1*sum(new);
q(2,1) = -1*sum(y);
//disp(p);
//disp(q);
sol = linsolve(p,q);
A = sol(1,1 );
B = sol(2,1);
disp(A, "A is");
disp(B, "B is"); 