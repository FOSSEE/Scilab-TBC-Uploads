// example 7.11
// solve the boundary value problem      u''=u'+1;
// u(0)=1;   u(x=1)=2(%e-1);          h=1/3;


// we know;     u''=(u(j-1)-2*u(j)+u(j+1))/h^2;
// we know;      u'=(u(j+1)-u(j-1))/2h;

// 1) second order method;
 x=0:1/3:1;                                  
 
 u= rand(1,4);;
// hence;
disp('(u(j-1)-2*u(j)+u(j+1))/h^2=((u(j+1)-u(j-1))/2h)+1')           // for j=1,2;


disp('for j=1            (7/6)*u0-2*u1+(5/6)*u2=(1/9)')

disp('for j=2            (7/6)*u1-2*u2+(5/6)*u3=(1/9)')


// hence eliminating u1!
// solving for u1,u2, 
u0=1;
u3=2*(%e-1);
u1=1.454869;
u2=2.225019;

disp(x);
disp(u);