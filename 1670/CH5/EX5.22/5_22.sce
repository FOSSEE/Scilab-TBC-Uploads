//Example 5.22
//Newton's Forward Difference Formula
//Page no. 147
clc;close;clear;
printf(' x\t  y\t\t   1st\t\t   2nd\t\t   3rd\t\t\n\t\t\tdifference\tdifference\tdifference\t')
printf('\n---------------------------------------------------------------------------------------------------')
h=1;
z=[0,-3;1,3;2,11;3,27;4,57;5,107]
deff('y=f1(x,p)','y=z(x,2)+p*z(x,3)+p*(p-1)*z(x,4)/2+p*(p-1)*(p-2)*z(x,5)/6')
x01=0;x11=6;
x02=2;x12=2.5
for i=3:7
    for j=1:8-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:6
    for j=1:5
        if z(i,j)==0 & i~=1 then
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
x=poly(0,'x')
l=z(1,2)+x*z(1,3)+x*(x-1)*z(1,4)/2+x*(x-1)*(x-2)*z(1,5)/6
disp(l,"The required equation is :")