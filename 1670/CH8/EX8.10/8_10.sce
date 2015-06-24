//Example 8.10
//Rombers Method
//Page no 275
clc;clear;close;

a=0;b=1;
h=[0.5,0.25,0.125];
for j=1:3
    n=(b-a)/h(j)+1
for i=1:n
    x(1,i)=a+(i-1)*h(j)
    y(1,i)=1/(1+x(1,i)^2)
end
Q(j)=0;
if j~=3 then
    for i=1:n
    if i==1 | i==n then
        Q(j)=Q(j)+h(j)*(y(1,i))/2
    else
        Q(j)=Q(j)+h(j)*(y(1,i))
    end
end
else
    R2=0;
for i=1:n
    if(i==1 | i==n)
        R2=R2+y(1,i)
    elseif(((i)/2)-fix((i)/2)==0)
        R2=R2+4*y(1,i)
    else
        R2=R2+2*y(1,i)
    end
end
R2=R2*h(j)/3
end
printf('\nx :')
for k=1:n
    printf('\t %g',x(1,k))
end
printf('\nf(x) :')
for k=1:n
    printf('\t%.4f',y(1,k))
end
if j~=3 then
    printf('\n\nQ(%i) = %g\n\n\n',j,Q(j))
else
    printf('\n\nR2 = %.4g\n\n\n',R2)
end
end

R1=4*Q(2)/3-Q(1)/3
S=16*R2/15-R1/15;
printf('\nTherefore by Rombergs Method, S = %.4g',S)