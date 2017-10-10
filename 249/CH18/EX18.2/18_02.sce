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
//Pressure(atm)
PAo=3.2;
R=0.082;//litre.atm/mol.k
T=390;//k
v=20;//litre/hr
W=0.01;///kg
CA_in=[0.1;0.08;0.06;0.04];
CA_out=[0.084;0.07;0.055;0.038];
CAo=PAo/(R*T);
FAo=CAo*v;
eA=3;
for i=1:4
XA_in(i)=(1-CA_in(i)/CAo)/(1+eA*CA_in(i)/CAo);
XA_out(i)=(1-CA_out(i)/CAo)/(1+eA*CA_out(i)/CAo);
dXA(i)=XA_out(i)-XA_in(i);
rA(i)=dXA(i)/(W/FAo);
CA_avg(i)=(CA_in(i)+CA_out(i))/2;
end
plot(CA_avg,rA)
xlabel('CA(mol/litre)')
ylabel('-rA(mol/hr.kg)')
coeff1=regress(CA_avg,rA)
k=coeff1(2)
printf("\n The rate of reaction(mol/hr.kg) is %f",k)
printf("CA")
disp('The answer slightly differs from those given in book as regress fn is used for calculating slope and intercept')