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
t=[0;2;4;6];
XA=[0.75;0.64;0.52;0.39];
t1=4000;//kg.s/m3
density_s=1500;//kg/m3
De=5*10^-10;
d=2.4*10^-3;
//Assuming -rA=kCA*a,-da/dt=kd*a
//For this rate a plot of ln(CAo/CA-1)vs t should give a straight line
for i=1:4
    y(i)=log((1/(1-XA(i)))-1);
end
plot(y,t)
xlabel('t')
ylabel('ln(CAo/CA-1)')
//Guessing No Intrusion of Diffusional Resistance
//ln(CAo/CA-1)=ln(k*t1)-kd*t
coeff =regress(t,y);
kd=coeff(2);
k=exp(coeff(1))/t1;
L=d/6;
Mt=L*sqrt(k*density_s/De);
//Assuming Runs were made in regime of strong resistance to  pore diffusion
k1=((exp(coeff(1)))^2)*(L^2)*density_s/(t1*t1*De);
kd1=-2*coeff(2);
Mt=L*sqrt(k1*density_s/De);
printf("\n Rate equation(mol/kg.s) in diffusion free regime with deactivation is %f ",k1)
printf("CA*a with \n -da/dt(hr-1) is %f",kd1)
printf("a")
//In strong pore diffusion
k2=k1*sqrt(De/(k1*density_s));
printf("\n Rate equation(mol/kg.s) in strong pore diffusion resistance regime with deactivation is %f ",k2)
printf("CA*a^0.5/L with \n -da/dt(hr-1) is %f",kd1)
printf("a")