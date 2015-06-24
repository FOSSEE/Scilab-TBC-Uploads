        //    PG (351)

//    dy/dx = -y + 2 * cos(x)

deff('[y]=g(x,y)','y=-y+2*cos(x)')
y0=1;
x0=0;
xn=5;

// execute the function euler1 , so as to call it to evaluate the value of y,

[y,x] = Euler1(y0,x0,xn,0.04,g)    //    h = 0.04

[y,x] = Euler1(y0,x0,xn,0.02,g)    //    h = 0.02

[y,x] = Euler1(y0,x0,xn,0.01,g)    //    h = 0.01