//Example 21.1
//Parallel Bisection Method
//Page no. 721
clc;close;clear;

deff('y=f(x)','y=x^2-cos(x)')
a=0;b=1;e=0.0001;i=1;
printf('Itr\ta\tb\th\t\tx0\t\tx1\t\tx2\t\tx3\t\tx4\t\tx5\n\t\t\t\t\ty0\t\ty1\t\ty2\t\ty3\t\ty4\t\ty5')
printf('\n--------------------------------------------------------------------------------------------------------------------------------\n')
while (abs(a-b)>=e)
    

    h=(b-a)/5;
    y(1)=f(a);
    x(1)=a;
    printf(' %i\t%g\t%g\t%f\t%f',i,a,b,h,x(1))
    for j=2:6
        x(j)=x(j-1)+h;
        y(j)=f(x(j));
        if (y(j-1)*y(j)<0)
                a=x(j-1);
                b=x(j);
        end
        printf('\t%f',x(j))
    end
    printf('\n\t\t\t\t\t')
    for j=1:6
        printf('%f\t',y(j))
    end
    
    printf('\n')
    i=i+1;
end

