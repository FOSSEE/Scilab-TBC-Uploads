//Example 6.1

deff('[y]=f(x)','y=exp(x)')
x0=-1
x1=0
x2=1
//  F=f(x0,x1,x2)=f(-1,0,1)
F=f(x0)/[(x1-x0)*(x2-x0)]+f(x1)/[(x0-x1)*(x2-x1)]+f(x2)/[(x0-x2)*(x1-x2)]
   // W(-1,0,1)=2 and so, for a<= -1,1 <=b
  // |f[-1,0,1]|/2 <= dist(at infinity)(f,pi1)*****
  // dist(exp(x),pi1) >= 0.27154
