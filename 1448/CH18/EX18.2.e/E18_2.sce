clc
//Initialization of variables
function [coefs]=regress(x,y)
  coefs=[]
  if (type(x) <> 1)|(type(y)<>1) then error(msprintf(gettext("%s: Wrong type for input arguments: Numerical expected.\n"),"regress")), end
  lx=length(x)
  if lx<>length(y) then error(msprintf(gettext("%s: Wrong size for both input arguments: same size expected.\n"),"regress")), end
  if lx==0 then error(msprintf(gettext("%s: Wrong size for input argument #%d: Must be > %d.\n"),"regress", 1, 0)), end
  x=matrix(x,lx,1)
  y=matrix(y,lx,1)
  xbar=sum(x)/lx
  ybar=sum(y)/lx
  coefs(2)=sum((x-xbar).*(y-ybar))/sum((x-xbar).^2)
  coefs(1)=ybar-coefs(2)*xbar
endfunction


Q=[1 2 3 4 5]
t1=[5.2 9.4 13.7 18 22.2]
t2=[1.1 2 2.9 4 4.5]
//calculations
kqbykf=regress(Q,t1)
slope1=kqbykf(2) *10^3
kq=regress(Q,t2)
slope2=kq(2) *10^10
kq=slope2
kf=kq/slope1
thalf=log (2) /kf
//results
printf("Quenching rate constant = %.1e L ml^-1 s^-1",kq)
printf("\n Half life= %.1e s",thalf)