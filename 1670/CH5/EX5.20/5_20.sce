//Example 5.20
//Newtons Forward Difference Formula
//Page no. 144
clc;close;clear;
printf(' x\t  sin x\t\t   1st\t\t   2nd\t\t   3rd\t\t   4th\t\t   5th\n\t\t\tdifference\tdifference\tdifference\tdifference\tdifference\t')
printf('\n---------------------------------------------------------------------------------------------------')
h=0.2;
z=[0.5,0.47943;0.7,0.64422;0.9,0.78333;1.1,0.89121;1.3,0.96356;1.5,0.99749]
deff('y=f(x,p)','y=z(x,2)+p*z(x,3)+p*(p+1)*z(x,4)/2+p*(p+1)*(p+2)*z(x,5)/6+p*(p+1)*(p+2)*(p+3)*z(x,6)/24')
deff('y=f1(x,p)','y=z(x,2)+p*z(x,3)+p*(p-1)*z(x,4)/2+p*(p-1)*(p-2)*z(x,5)/6+p*(p-1)*(p-2)*(p-3)*z(x,6)/24+p*(p-1)*(p-2)*(p-3)*(p-4)*z(x,7)/120')
x01=0.5;x11=0.54;
x02=1.3;x12=1.36
for i=3:7
    for j=1:8-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:6
    for j=1:7
        if z(i,j)==0 then
            printf(' \t')
        else
            if j==1 then
                printf(' %.1f\t',z(i,j))
            else
                printf('%.7f\t',z(i,j))
            end
        end
    end
    printf('\n')
end
p=(x11-x01)/h;
disp(f1(1,p),"fp (0.54) =");
p=(x12-x02)/h;
disp(f(5,p),"fp (1.36) =");
