//clc()
A = [1,1/2,1/3;1/2,1/3,1/4;1/3,1/4,1/5];
n = det(A(2,1));
A(2,:) = A(2,:)/n;
n = det(A(3,1));
A(3,:) = A(3,:)/n;
B = inv(A);
disp(A,"A = ")
for j = 1:3
    a = 0;
for i = 1:3
    m(i) = det(A(j,i));
    su(j) = a + m(i);
    a = su(j);
end
end
if su(1) < su(2) then
    if su(2) < su(3) then
        z = su(3);
    else
        z = su(2);
    end
else
     if su(1) < su(3) then
        z = su(3);
    else
        z = su(1);
    end
end
for j = 1:3
    a = 0;
for i = 1:3
    m(i) = det(B(j,i));
    sm(j) = a + abs(m(i));
    a = sm(j);
end
end
if sm(1) < sm(2) then
    if sm(2) < sm(3) then
        y = sm(3);
    else
        y = sm(2);
    end
else
     if sm(1) < sm(3) then
        y = sm(3);
    else
        y = sm(1);
    end
end
C = z*y;
disp(C,"Condition number for the matrix =")
