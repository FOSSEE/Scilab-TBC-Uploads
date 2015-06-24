
//example 10.9
//page 396
clc; funcprot(0);
//initialisation of variable
//solving for y
z=2;//trapezoid ratio
b=10;//base
n=0.012;//coeff
s=0.0002;//slope
Q=180;//discharge
l=5000;//distance
y(1)=10;
A(1)=(b+z*y(1))*y(1);
P(1)=b+2*y(1)*sqroot(1+z^2);
E(1)=y(1)+0.02;
Rbar(1)=0;
Abar(1)=0
Pbar(1)=0;
distance(1)=0;
delx(1)=0;
S(1)=0;
deff('y=f(x)','y=180^2*(10+4*x)/9.81/x^3/(10+2*x)^3-1');
[x,v,info]=fsolve(1,f);
disp(x,"critical depth of water(ft)=");

//for the table
for i=2:6
    y(i)=y(i-1)-0.2;
    A(i)=(b+z*y(i))*y(i);
    P(i)=b+2*y(i)*sqroot(1+z^2);
    E(i)=y(i)+0.02;
    Abar(i)=A(i-1)/2+A(i)/2;
    Pbar(i)=P(i-1)/2+P(i)/2;
    Rbar(i)=Abar(i)/Pbar(i);
    S(i)=(n*Q/Abar(i)/Rbar(i)^(2/3))^2;
    delx(i)=(E(i-1)-E(i))/(s-S(i));
    distance(i)=distance(i-1)+delx(i);
    
end
printf("y       A      P       E      Abar       Pbar       Rbar       S       delx       distace");
//printing the table
for i=1:6
    disp(i,"for row wise values of each parameter is for row=");
    printf("    %.2f",y(i));
    printf("    %.2f",A(i));
    printf("     %.2f",P(i));
    printf("    %.2f",E(i));
    printf("    %.2f",Abar(i));
    printf("    %.2f",Pbar(i));
    printf("    %.2f",Rbar(i));
    printf("    %.2e",S(i));
    printf("    %.2f",delx(i));
    printf("    %.2f",distance(i));
    
end
y5000=y(5)-(distance(5)-l)/(distance(5)-distance(6))*0.2;
disp("");
disp(y5000,"the depth of water at distance 5000m in (m):")
clear
