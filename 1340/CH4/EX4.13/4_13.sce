clc;
s = %s;
A =[0 1;-8 -6];
I = eye(2,2);
phi = inv(s*I-A);
disp(phi,"inverse of (sI-A)=");
syms t;
for i =1:2
    for j =i:2
        pho(i,j) = ilaplace(phi(i,j),s,t);
        
    end
end
disp(pho,"State transition matrix is :");


