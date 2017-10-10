clear ;
clc;
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
// Example 1.9
printf('Example 1.9\n\n');
printf('Page No. 17\n\n');
//given

p= [50, 55, 65, 50, 95, 90, 85, 80, 60, 90, 70, 110, 60, 105];// weakly production in tonnes
s= [0.4, 0.35, 0.45, .31, 0.51,0.55, 0.45, 0.5, 0.4, 0.51, 0.4, 0.6, 0.45, 0.55];// weakly steam consumption in 10^6 kg
coefs = regress(p,s);
new_p = 0:120
new_s = coefs(1) + coefs(2)*new_p;
plot(p,s,'r*');
mtlb_hold on
plot(new_p,new_s);// please see the corresponding graph in graphic window
xtitle('weakly steam consumption-production','weakly output (tonnes)','steam consumption/week (10^6 kg)')
l = legend([_('Given data'); _('Fitting function')],2);

in= coefs(1)*10^6;// intercept of graph in kg/weak
printf('At zero output the steam consumption is %3.0f in kg/weak \n',in)