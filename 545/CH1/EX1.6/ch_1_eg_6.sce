clc
disp("the soln of eg 1.6--> Gauss Seidel Method");
for i=1:3,xnew(i)=2,e(i)=1
end
x=1e-6
while e(1)>x&e(2)>x&e(3)>x do 
    for i=1:3, xold(i)=xnew(i),end
    xnew(1)=(9-xold(2)+2*xold(3))/3
    xnew(2)=(xnew(1)-8+3*xold(3))/4
    xnew(3)=(xnew(2)-xnew(1)+1)/4
    for i=1:3,e(i)=abs(xnew(i)-xold(i))
    end
end
disp("the values of x1,x2,x3 respectively is");
for i=1:3,disp(xnew(i));
end