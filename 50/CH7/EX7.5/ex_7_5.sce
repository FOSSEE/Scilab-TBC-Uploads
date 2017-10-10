// example 7.5
// solve the boundary value problem      u''=u+x;
// u(x=0)=u(0)=0;   u(x=1)=u(4)=0;          h=1/4;


// we know;     u''=(u(j-1)-2*u(j)+u(j+1))/h^2;

// 1) second order method;
 x=0:1/4:1;                                  
 u0=0;
 u4=0;
u1_3 = rand(1,3)
 u=[u0 u1_3 u4];
// hence;
disp('(u(j-1)-2*u(j)+u(j+1))/h^2=u(j)+x(j)')           // for j=1,2,3;

disp('for j=1            -16*u0+33*u1-16*u2=-.25')

disp('for j=2            -16*u1+33*u2-16*u3=-.50')

disp('for j=3            -16*u2+33*u3-16*u4=-.75')

// hence solving for u1,u2,u3)   , 
u1=-.034885;
u2=-.056326;
u3=-.050037;

disp(x);
disp(u);

// 2) numerov method;
 x=0:1/4:1;                                  
 u0=0;
 u4=0;
 u=[u0 u1 u2 u3 u4];
// since according to numerov method we get the following system of equations;
disp('(191*u(j-1)-394*u(j)+191*u(j+1)=x(j-1)+10*x(j)+x(j+1)')           // for j=1,2,3;

disp('for j=1            191*u0-394*u1+191*u2=3')

disp('for j=2            191*u1-394*u2+191*u3=6')

disp('for j=3            191*u2-394*u3+191*u4=9')

// hence solving for u1,u2,u3   , 
u1=-.034885
u2=-.056326
u3=-.050037


disp(x);
disp(u);