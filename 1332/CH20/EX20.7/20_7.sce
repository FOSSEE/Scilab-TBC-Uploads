//Example 20.7
//Laplace Distribution
//Page no. 694
clc;clear;close;

dr=3;r0=4;dth=%pi/4;
deff('y=f(u1,u2,u3,u4)','y=(u1+u3+(dr*(u3-u1))/(2*r0)+(u2+u4)*(dr/(r0*dth))^2)/(2*(1+(dr/(r0*dth))^2))')         //laplace distribution
for i=1:8
    U(i)=0;
end
printf('Itr\t  U1\t  U2\t  U3\t  U4\t  U5\t  U6\t  U7\t  U8\n-----------------------------------------------------------------------')
for l=0:15
    printf('\n  %i',l)
    for i=1:8
        if i==1 then
            u1(i)=f(100,U(8),40,U(i+1))
        elseif i==8
            u1(i)=f(100,U(i-1),40,U(1))
        else
            u1(i)=f(100,U(i-1),40,U(i+1))
        end
        
    end
    for i=1:8
        U(i)=u1(i)
        printf('\t%.3f',U(i))
    end
end