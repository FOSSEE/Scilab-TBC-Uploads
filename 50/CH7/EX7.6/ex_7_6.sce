// example 7.6
// solve the boundary value problem      u''=u*x;
// u(0)+u'(0)=1;   u(x=1)=0;          h=1/3;


// we know;     u''=(u(j-1)-2*u(j)+u(j+1))/h^2;

// 1) second order method;
 x=0:1/3:1;                                  
 
 u3=1;
 u=[u0 u1 u2 u3 ];
// hence;
disp('(u(j-1)-2*u(j)+u(j+1))/h^2=u(j)*x(j)')           // for j=0,1,2,3;

disp('for j=0            u1!-2*u0+u1=0')            // u1!=u(-1)

disp('for j=1            u0-2*u1+u2=(1/27)u1')

disp('for j=2            u1-2*u2+u3=(2/27)u2')

// we know;      u'=(u(j+1)-u(j-1))/2h
// hence eliminating u1!
// solving for u0,u1,u2,u3 , 
u0=-.9879518;
u1=-.3253012;
u2=-.3253012;

disp(x);
disp(u);


