// example 7.3
// solve by shooting method;

//   u''=2*u*u';
// u(0)=0.5;  u(1)=1;              

// let ->   U1(x)=du/dx;
// U2(x)=d2u/dx2;

// U(x)=[U1(x);U2(x)]

// hence ;
// dU/dx=f(x,U);

h=.25;

ub=[.5,1];

up=[0:.1:1];
 
x=0:h:1;
 
deff('[w]=f(x,U)','w=[U(2); 2*U(1)*U(2)]')



[U] = shooting(ub,up,x,f);

// the solution obtained would show the values of u in the first collumn and their corresponding  derivatives in the second collumn ;