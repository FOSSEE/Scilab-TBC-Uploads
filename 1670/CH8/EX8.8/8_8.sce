//Example 8.8
//Rombers Method
//Page no 274
clc;clear;close;

a=0;b=1;
h=[0.5,0.25,0.125];
for j=1:3
    n=(b-a)/h(j)+1
for i=1:n
    x(1,i)=a+(i-1)*h(j)
    y(1,i)=1/(1+x(1,i))
end
Q(j)=0;
for i=1:n
    if i==1 | i==n then
        Q(j)=Q(j)+h(j)*(y(1,i))/2
    else
        Q(j)=Q(j)+h(j)*(y(1,i))
    end
end
printf('\nx :')
for k=1:n
    printf('\t %g',x(1,k))
end
printf('\nf(x) :')
for k=1:n
    printf('\t%.4f',y(1,k))
end
printf('\n\nQ(%i) = %g\n\n\n',j,Q(j))
end
R1=4*Q(2)/3-Q(1)/3
S=16*Q(3)/15-R1/15;
printf('S = %g',S)