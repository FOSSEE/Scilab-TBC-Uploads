//Example 20.8
//Spherical Coordinate System
//Page no. 697
clc;clear;close;
deff('y=cot(x)','y=1/tan(x)')
dr=5;r0=50;dth=%pi/4;dfi=%pi/4;N=-10;Z=60;Nb=0;Zt=70;
deff('y=f(u1,u2,u3,u4,u5,u6,th0)','y=((u1+u3)/dr^2+(u3-u1)/(r0*dr)+(u2+u4)/(r0*dth)^2+(u2*cot(th0)/(r0^2*dth)+(u5+u6)/(r0*sin(th0)*dfi)^2))/(2/dr^2+2/(r0*dth)^2+cot(th0)/(r0^2*dth)+2/(r0*sin(th0)*dfi)^2)')         //laplace distribution in spherical coordinate
T1=40;T2=20;H1=35;H2=10;B1=5;B2=0;t1=240;t2=180;b1=100;b2=80;h1=210;h2=150
printf('\n----------------------------------------------------------------------------\n')
s=["T","H","B","t","h","b"];
for i=1:8
    if i<4 | i>6 then
        T(1,i)=T1;
        H(1,i)=H1;
        B(1,i)=B1;
        b(1,i)=b1;
        t(1,i)=t1;
        h(1,i)=h1;
    else
        T(1,i)=T2;
        H(1,i)=H2;
        b(1,i)=b2;
        B(1,i)=B2;
        t(1,i)=t2;
        h(1,i)=h2;
    end
end
h(1)=0;h(2)=0;
Al=[T;H;B;t;h;b]
for i=1:6
    if i==1 then
        printf('Temperature Distribution in Outer Sphere\n')
        printf('----------------------------------------------------------------------------\n')
    end
    if i==4 then
        printf('\nTemperature Distribution in Inner Sphere\n')
        printf('----------------------------------------------------------------------------\n')
    end
    printf('\nPoint : ')
    for j=1:8
            printf('\t%s%i',s(i),j)
    end
    printf('\nTemperature : ')
    for j=1:8
        if (j==1 | j==2) & i==5 then
            printf('\t%s',"?")
        else
            printf('\t%i',Al(i,j))
        end
    end
    printf('\n----------------------------------------------------------------------------')
end
th0=10^-30
Uh1=f(1000,Al(5,8),Al(2,1),Al(5,2),Al(6,1),Al(4,1),th0)
disp(Uh1,'Uh1 = ')
th0=%pi/4;
Uh2=f(1000,Uh1,Al(2,2),Al(5,3),Al(6,2),Al(4,2),th0)
disp(Uh2,'Uh2 = ')