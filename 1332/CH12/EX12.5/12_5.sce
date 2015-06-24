//Example 12.5
//Interpolation Methods
//Page no. 403
clc;close;clear;

x=[0,1,2,3,4];
y=[0,1,8,27,64];

//Inverse lagrange Method
P=0;
y1=20;
for k=0:4
    p=x(k+1)
    for j=0:4
        if(j~=k)
            p=p*((y1-y(j+1))/(y(k+1)-y(j+1)))
        end
    end
    P=P+p;
end
disp(P,'Inverse Lagrange interpolation x=')


//Newton's divide difference interpolation
x1=x;
deff('xi=P(a,b,d,y)','xi=(b(d+1)-b(d))/(a(d+y)-a(d))')  //function for finding polynomials
for i=1:2
    for j=1:5-i
        z(j,i)=P(y,x,j,i)
         x(j)=z(j,i)
    end
end
z(5,1)=0;
printf('\n\n y\tx      f(y0,y1)        f(y0,y1,y3)\n')
printf('------------------------------------------\n')
    for j=1:5
        printf(' %i\t%i \t%i\t\t%i\t\n',y(1,j),x1(1,j),z(j,1),z(j,2))
    end
y1=20;
f=x1(4)+(y1-y(4))*(z(4,1))+(y1-y(4))*(y1-y(5))*z(4,2)
printf('\n\nNewton Divide Difference x(20)=%.2f',f)

x=x1;
//Iterated Linear Interpolation
function [x,y,z]=tran(a,b)        // function for exchanging values
    z=a;y=b;x=z;
endfunction
deff('y=P(a,b,c,d,e)','y=(c(d)*b(d+1)-c(d+e)*b(d))/(a(d+e)-a(d))')  //function for finding polynomials
y1=20

[y(4),y(1),a]=tran(y(1),y(4))
[y(3),y(2),a]=tran(y(2),y(3))
[x(4),x(1),a]=tran(x(1),x(4))
[x(3),x(2),a]=tran(x(2),x(3))
for i=1:5
    y1_y(i)=y1-y(i);
end
printf('y\ty1-y\tx\n')
printf('------------------\n')
for i=1:5
    printf('%.1f\t%i\t%i\n',y(i),y1_y(i),x(i))
end
printf('\n\nPolynomials\n')
printf('-----------\n')
for i=1:4
    for j=1:5-i
         printf('%f\n',P(y,x,y1_y,j,i))
         x(j)=P(y,x,y1_y,j,i)
    end
    printf('\n\n')
end
printf('Iterated Linear Interpolation x(20) = %f',x(j))

x=[0,1,2,3,4];
y=[0,1,8,27,64];
y1=y;
//Suggested Interpolation

for i=1:4
    for j=1:5-i
        z(j,i)=y(j+1)-y(j);
        y(j)=z(j,i)
    end
end
printf('\n\n\n x\ty\tdy\td2y\td3y\td4y\n')
printf('--------------------------------------------\n')
for i=1:5
    printf(' %i\t%i\t%i\t%i\t%i\t%i\n',x(i),y1(i),z(i,1),z(i,2),z(i,3),z(i,4))
end
s=poly(0,'s')
p=y1(4);k=3;
for i=1:3
    r=1;
    for j=1:i
        r=r*(s+(j-1))
    end
    r=r*z(k,i)/factorial(j);
    k=k-1;
    p=p+r;
    printf('\n\nStage %i :',i)
    disp(p)
end
s0=-7/19;
disp(s0,'s0=');
s1=(-7-s0*(s0+1)*6)/19
disp(s1,'s1=')
disp(3+s1,'x1=')
s2=(-7-s1*(s1+1)*6-s1*(s1+1)*(s1+2))/19
disp(s2,'s2=')
x2=3+s2;
disp(x2,'Suggested Interpolation x(20)=');