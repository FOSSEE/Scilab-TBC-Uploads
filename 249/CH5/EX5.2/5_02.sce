clear
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
//Given
//Volumetric flow rates(litre/hr)
vo=[10;3;1.2;0.5];
//Concentrations (millimol/litre)
CA=[85.7;66.7;50;33.4];
CAo=100;
//Volume(litre)
V=0.1;
//For the stoichiometry 2A--&gt;R
//Expansion factor is
e=(1-2)/2;
//Initialization
XA=zeros(4,1);
rA=zeros(4,1);
//Relation between concentration and conversion
for i=1:4
XA(i)=(1-CA(i)/CAo)/(1+e*CA(i)/CAo);
//Rate of reaction is given by
rA(i)=vo(i)*CAo*XA(i)/V;
//Testing nth order kinetics
//-rA=k*CA^n
//log(-rA)=logk+nlog(CA)
m(i)=log10(CA(i));
n(i)=log10(rA(i));
end
//For nth order plot between n &amp; m should give a straight line
plot(m,n)
coefs=regress(m,n);
printf("Intercept of the graph is %f\n",coefs(1))
printf("Slope of the graph is %f\n",coefs(2))
k=10^coefs(1)
n=coefs(2)
printf("\n Taking n=2,rate of equation(millimol/litre.hr) is %f",k)
printf("CA^2 \n")
disp('The sol slightly differ from that given in book because regress fn is used to calculate the slope')