
//example 10.10
//page 395
clc; funcprot(0);
//initialisation of variable
//solving for y
z=2;//trapezoid ratio
n=0.012;//coeff
s=0.0002;//slope
Q=180;//discharge
Cm=1;//constant
l=5000;//distance
b=10;
g=9.81;
deff('y=f(x)','y=(10+2*x)/0.012*x*((10+2*x)*x/(10+4.472*x))^(2/3)*0.0002^0.5-180');
[x,v,info]=fsolve(1,f);
disp(x,"normal depth of water(ft)=");
y(1)=10;
A(1)=(b+z*y(1))*y(1);
P(1)=b+2*y(1)*sqroot(1+z^2);
R(1)=A(1)/P(1);
T(1)=50;
delx(1)=0;
x(1)=0;
Fy(1)=(1-Q^2*T(1)/g/A(1)^3)/(s-(n*Q/Cm/A(1)/R(1)^(2/3))^2);

//for the table
for i=2:6
    y(i)=y(i-1)-0.2;
    A(i)=(b+z*y(i))*y(i);
    P(i)=b+2*y(i)*sqroot(1+z^2);
    R(i)=A(i)/P(i);
    T(i)=T(1)-.8;
    Fy(i)=(1-Q^2*T(i)/g/A(i)^3)/(s-(n*Q/Cm/A(i)/R(i)^(2/3))^2);
    delx(i)=0.5*(Fy(i-1)+Fy(i))*0.2;
    x(i)=x(i-1)+delx(i);
    
end
printf("  y          A         P          R       T        F(y)     delx    x");
//printing the table
for i=1:6
    disp(i,"for row wise values of each parameter is for row=");
    printf("    %.2f",y(i));
    printf("    %.2f",A(i));
    printf("     %.2f",P(i));
    printf("    %.2f",R(i));
    printf("    %.2f",T(i));
    printf("    %.f",Fy(i));
    printf("    %.2f",delx(i));
    printf("    %.2f",x(i));
    
end
y5000=y(5)-(x(5)-l)/(x(5)-x(6))*0.2;
disp("");
disp(y5000,"the depth of water at distance 5000m in (m):")
clear

