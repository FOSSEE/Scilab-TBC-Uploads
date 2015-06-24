clc;
clear;
n=3;
for i=1:n
    for j=1:n
        p(i,j)=modulo(i+j-2,3);
    end
end
disp("modulo 3 Addition");
disp(p);
for i=1:n
    for j=1:n
        p(i,j)=modulo((i-1)*(j-1),3);
    end
end
disp("modulo 3 Multiplication");
disp(p);

