//Example 5.23
//Newton's Forward Difference Formula
//Page no. 147
clc;close;clear;
printf(' x\t  y\t d1\td2\td3\td4\t')
printf('\n--------------------------------------------------------------------')
h=5;
z=[80,5026;85,5674;90,6362;95,7088;100,7854]
deff('y=f(x,p)','y=z(x,2)+p*z(x-1,3)+p*(p+1)*z(x-2,4)/2+p*(p+1)*(p+2)*z(x-3,5)/6+p*(p+1)*(p+2)*(p+3)*z(x-4,6)/24')
x01=100;x11=105;
for i=3:7
    for j=1:7-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:5
    for j=1:6
        if z(i,j)==0 then
            printf(' \t')
        else
            if j==1 then
                printf(' %i\t',z(i,j))
            else
                printf('%i\t',z(i,j))
            end
        end
    end
    printf('\n')
end
x=poly(0,'x')
l=z(1,2)+x*z(1,3)+x*(x-1)*z(1,4)/2+x*(x-1)*(x-2)*z(1,5)/6
disp(l,"The required equation is :")
p=(x11-x01)/h;
disp(f(5,p),"fp (105) =");