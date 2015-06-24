clc;
clear;
n=4;
for i=1:4
    for j=1:4
        p(i,j)=modulo(i+j-2,4);
    end
end
disp("modulo 4 Addition");
disp(p);
for i=1:4
    for j=1:4
        p(i,j)=modulo((i-1)*(j-1),4);
    end
end
disp("modulo 4 Multiplication");
disp(p);

