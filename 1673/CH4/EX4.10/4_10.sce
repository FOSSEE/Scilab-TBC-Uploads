//linear weighted least approx
//example 4.10
//page 139
clc;clear;close;
x=[0 2 5 7];
y=[-1 5 12 20];
w=100;//given weight 100;
W=[1 1 100 1];
for i=1:4
    Wx(i)=W(i)*x(i);
    Wx2(i)=W(i)*x(i)^2;
    Wx3(i)=W(i)*x(i)^3;
    Wy(i)=W(i)*y(i);
    Wxy(i)=W(i)*x(i)*y(i);
   end
S_x=0,S_y=0,S_W=0,S_Wx=0,S_Wx2=0,S_Wy=0,S_Wxy=0;
for i=1:4
    S_x=S_x+x(i)
    S_y=S_y+y(i)
    S_W=S_W+W(i)
    S_Wx=S_Wx+Wx(i)
    S_Wx2=S_Wx2+Wx2(i)
    S_Wy=S_Wy+Wy(i)
    S_Wxy=S_Wxy+Wxy(i)
end
A=[S_W,S_Wx;S_Wx,S_Wx2];
C=[S_Wy;S_Wxy];
printf('x\t   y\t   W\t   Wx\t   Wx^2\t   Wy\t   Wxy\t\n\n');
for i=1:4
    printf('%d\t   %d\t   %d\t    %d\t   %d\t   %d\t    %d\t\n',x(i),y(i),W(i),Wx(i),Wx2(i),Wy(i),Wxy(i))
end
printf('-------------------------------------------------------------------------------------------------------------------------------------\n\n');
printf('%d\t   %d\t   %d\t   %d\t   %d\t   %d\t    %d\t\n',S_x,S_y,S_W,S_Wx,S_Wx2,S_Wy,S_Wxy);
X=A^-1*C;
printf('\n\nthe equation is y=%f+%fx',X(1,1),X(2,1))
printf('\n\nthe value of y(5) is %f',X(1,1)+X(2,1)*5)