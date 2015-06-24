//Example 5.45
//Inverse Lagrange Method
//Page no. 192
clc;close;clear;

x=[30,34,38,42];
y=[-30,-13,3,18];
P=0;
y1=0;
for k=0:3
    p=1
    for j=0:3
        if(j~=k)
            p=p*((y1-y(j+1))/(y(k+1)-y(j+1)))
        end
    end
    printf('\n  L%i(f) = %g\n',k,p)
    p=p*x(k+1)
    P=P+p;
end
disp(P,'Inverse Lagrange interpolation x=')