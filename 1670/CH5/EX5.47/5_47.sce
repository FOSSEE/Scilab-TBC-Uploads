//Example 5.47
//Bessel Interpolation
//Page no. 194
clc;close;clear;

deff('y=f(x)','y=x^3-15*x+4');
h=0.02;p=1;
for i=1:9
    z(i,1)=0.22+(i-1)*h
    z(i,2)=f(z(i))
end
printf('   x\t\t   f(x) \t    d\t\t    d2\t\t    d3\t\t    d4\n')
printf('--------------------------------------------------------------------------------------------')
for i=3:6
    for j=1:11-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:9
    for j=1:6
        if z(i,j)==0 then
            printf(' \t')
        else
            printf('%.7f\t',z(i,j))
        end
    end
    printf('\n')
end
for l=1:8
    if abs(z(l+1,2))/z(l+1,2)~=abs(z(l,2))/z(l,2) then
        break;
    else
        l=9;
    end
end
function [y]=f1(x,p1)
    if x==1 then
        y=z(l,2)
    elseif x==2
        y=z(l,2)+(p1*(p1-1))/factorial(2)*((z(l-1,4)+z(l,4))/2)
    elseif x==3
        y=z(l,2)+(p1*(p1-1))/factorial(2)*((z(l-1,4)+z(l,4))/2)+(p1*(p1-1)*(p1-0.5))/factorial(3)*(z(l,5))
    end
endfunction
for i=1:3
    p=-(f1(i,p))/z(l,3)
    printf('\n   p%i = %g\n',i,p)
end
x=z(l,1)+p*h;
printf(' \n\n   x = x0 + ph = %g+(%g)(%g) = %g',z(l,1),p,h,x)