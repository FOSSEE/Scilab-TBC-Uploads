// example 7.1
// solve by shooting method;

//   u''=u+1;
// u(0)=0;  u(1)=%e-1;              

// let ->   U1(x)=du/dx;
// U2(x)=d2u/dx2;

// U(x)=[U1(x);U2(x)]

// hence ;
// dU/dx=f(x,U);



deff('[w]=f(x,U)','w=[U(2); U(1)+1]')

h=0.25;
x=[0:h:1];
ub=[0,%e-1];
up=[0:1:10];


[U] = shooting(ub,up,x,f);

// the solution obtained would show the values of u and their derivatives at various x taken in regular intervals of h;