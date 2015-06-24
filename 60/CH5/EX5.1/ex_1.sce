
//Example 5.1

deff('y=f(x)','y=((x1)^3)+((x2)^3)-2*((x1)^2)+3*((x2)^2)-8')
funcprot(0)
deff('y=g(x)','y=3*((x1)^2)-4*(x1)+3*((x2)^2)+6*(x2)')
       // f1=(df/dx1)(x)=0 , f2=(df/dx2)(x)=0
  deff('y=fp(x)','y=3*((x1)^2)-4*(x1)')
  deff('y=fpp(x)','y=3*((x2)^2)+6*(x2)')
       x1=poly(0,"x1")
 fp=(3*((x1)^2)-4*(x1))
 p=roots(fp)
 
 x2=poly(0,"x12")
 fpp=3*((x2)^2)+6*(x2)
 p=roots(fpp)
       