
//Example 5.2
 
 deff('[y]=f(x1,x2)','y=((x1)^3)+((x2)^3)-2*((x1)^2)+3*((x2)^2)-8')
   //x1=1 , x2=-1
    //(del)f(X(0))=[3*((x1)^2)-4*x1,3*((x2)^2)+6*x2]'=[-1,-3]'
    //Thus , in the first step of steep descent ,
    // we look for a minimum of the function
 funcprot(0)
deff('[y]= g(t)','y=((1+t)^3)+((-1+3*t)^3)-2*((1+t)^2)+3*((-1+3*t)^2)-8')
   //g'(t)=3*((1+t)^2)+3*3*((-1+3*t)^2)-4*(1+t)+3*2*(-1+3*t)
  t=poly(0,"t") 
y=3*((1+t)^2)+3*3*((-1+3*t)^2)-4*(1+t)+3*2*3*(-1+3*t)
p=roots(y)
   // We choose the positive root t=1/3
   t=1/3;
   x1=1+t
   x2=-1+3*t
   a=3*((x1)^2)-4*x1
   b=3*((x2)^2)+6*x2
   funcprot(0)
 deff('[y]=fp(x1)','y=(3*((x1)^2)-4*(x1))')

  x1=poly(0,"x1")
 fp=(3*((x1)^2)-4*(x1))
 p=roots(fp)
 