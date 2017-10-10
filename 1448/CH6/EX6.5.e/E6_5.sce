clc
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
//Initialization of variables
c=[1 2 4 7 9]
hbyc=[0.28 0.36 0.503 0.739 0.889]
R=8.3145 //J/K mol
T=298 //K
g=9.81 //m/s^2
d=0.9998 //g/cm^3
//calculations
plot(c,hbyc)
xlabel('c')
ylabel('hbyc')
vector=regress(c,hbyc)
intercept=vector(1)
intercept=intercept*10^-2
M=R*T/(d*g*intercept)
//results
printf('Molar mass of the enzyme is close to %d kDa',M/1000 -3)