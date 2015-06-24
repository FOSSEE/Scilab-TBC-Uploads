        //    PG (409)

deff('[y]=f(x,y)','y=lamda*y+(1-lamda)*cos(x)-(1+lamda)*sin(x)')
lamda = -1;
[x,y]=trapezoidal(1,1,5,0.5,f)
lamda = -10;
[x,y]=trapezoidal(1,1,5,0.5,f)
lamda = -50;
[x,y]=trapezoidal(1,1,5,0.5,f)

