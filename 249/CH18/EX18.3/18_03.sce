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
CAo=0.1;//mol/litre
FAo=2;//mol/hr
eA=3;
CA=[0.074;0.06;0.044;0.029];//mol/litre
W=[0.02;0.04;0.08;0.16];//kg
//Gussing 1st order,plug flow rxn
//(1+eA)*log(1/(1-XA))-eA*XA=k*(CAo*W/FAo)
for i=1:4
XA(i)=(CAo-CA(i))/(CAo+eA*CA(i));
y(i)=(1+eA)*log(1/(1-XA(i)))-eA*XA(i);
x(i)=CAo*W(i)/FAo;
W_by_FAo(i)=W(i)/FAo;
CAout_by_CAo(i)=CA(i)/CAo;
XA1(i)=(1-CAout_by_CAo(i))/(1+eA*CAout_by_CAo(i));
end
plot(x,y)
coeff3=regress(x,y);
xlabel('CAoW/FAo'),ylabel('4ln(1/1-XA)-3XA')
k=coeff3(2);
printf("\n Part a,using integral method of analysis")
printf("\n The rate of reaction(mol/litre) is %f",k)
printf("CA")
//Part b
//plotting W_by_FAo vs XA1,the calculating rA=dXA/d(W/FAo) for last 3 points,we get
rA=[5.62;4.13;2.715];
coeff2=regress(CA(2:4),rA);
printf("\n Part b,using differential method of analysis")
printf("\n The rate of reaction(mol/litre) is %f",coeff2(2))
printf("CA")