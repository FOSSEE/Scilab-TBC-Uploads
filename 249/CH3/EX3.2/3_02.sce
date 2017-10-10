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
CA=[10;8;6;5;3;2;1];//mol/litre
T=[0;20;40;60;120;180;300];//sec
//plot(T,CA)
//xlabel('Time(sec)');ylabel('CA(mol/litre)');
//From graph y=-dCA/dt at different points are
y=[-0.1333;-0.1031;-0.0658;-0.0410;-0.0238;-0.0108;-0.0065];
//Guessing nth rate order
//rA=kCA^n
//log(-dCA/dt)=logk+nlogCA
for i=1:7
log_y(i)=log10(y(i));
log_CA(i)=log10(CA(i));
end
plot(log_CA,log_y)
xlabel('logCA');ylabel('log(-dCA/dt)')
coeff1=regress(log_CA,log_y);
n=coeff1(2);
k=-10^(coeff1(1));
printf("\n After doing linear regression,the slope and intercept of the graph is %f , %f",coeff(2),coeff(1))
printf("\n The rate equation is therefore given by %f",k)
printf("CA^1.375 mol/litre.sec")
disp('The answer slightly differs from those given in book as regress fn is used for calculating slope and intercept')