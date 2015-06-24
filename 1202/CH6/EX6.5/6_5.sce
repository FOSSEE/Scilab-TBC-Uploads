clear
clc

//Example 6.5
disp('Example 6.5')

k=0:10';
yk=[0 0.058 0.217 0.360 0.488 0.600 0.692 0.772 0.833 0.888 0.925]';

Y=yk(2:$);
n=length(Y);

yk_1=[yk(1:$-1)];
yk_2=[0;yk(1:$-2)];
uk_1=ones(n,1);
uk_2=[0;uk_1(1:$-1)];

X=[yk_1 yk_2 uk_1 uk_2];

Bhat=inv(X'*X)*X'*Y;//Equation 6-10
//a1, a2, b1, b2 are components of Bhat for linear regression
K_lin=(Bhat(3)+Bhat(4))/(1-Bhat(1)-Bhat(2)); //Equation 6-42

//====NON-LINEAR REGRESSION====//
//Now that we have the response data we can do non-linear regression through
//the transfer function approach. Total no. of variables to be regressed are
//three: K, tau1, tau2.
//For nonlinear regression we define a cost function which we have to minimize


function err=experiment(tau)
    K=tau(3);tau1=tau(1);tau2=tau(2);
    t=k';
    response=tau(3)*(1-(tau1*exp(-t/tau1)-tau2*exp(-t/tau2))/(tau1-tau2))
    err=sum((response-[yk]).^2);
endfunction

//f is value of cost function, g is gradient of cost function, 
//ind is just a dummy variable required by optim function
function [f,g,ind]=cost(tau,ind)  
    f=experiment(tau)
    g=numdiff(experiment,tau)
endfunction

x0=[1 3 1]'; //Initial guess for optimization routine
[cost_opt, tau_opt]=optim(cost,x0)
mprintf('\n Optimization using optim function done successfully \n')
mprintf('\n From nonlinear regression \n  tau1=%f \n tau2=%f min\n  K=%f min \n',[tau_opt]')

//Now we have to get discrete ARX model parameters from transfer function parameters 
//For this we use Equation nos.: 6-32 to 6-36

deltat=1;taua=0;tau1=tau_opt(1);tau2=tau_opt(2);K=tau_opt(3);
a1=exp(-deltat/tau1)+exp(-deltat/tau2);
a2=-exp(-deltat/tau1)*exp(-deltat/tau2);
b1=K*(1+(taua-tau1)/(tau1-tau2)*exp(-deltat/tau1)-(taua-tau2)/(tau1-tau2)*exp(-deltat/tau2));
b2=K*(exp(-deltat*(1/tau1+1/tau2))+(taua-tau1)/(tau1-tau2)*exp(-deltat/tau2)-(taua-tau2)/(tau1-tau2)*exp(-deltat/tau1));

mprintf("\n         Linear Regression           Non-Linear Regression")
mprintf("\n     %s      %f          %20f",["a1";"a2";"b1";"b2";"K"],[[Bhat;K_lin] [a1;a2;b1;b2;K]])

yL_hat=X*Bhat;
yN_hat=X*[a1;a2;b1;b2];

mprintf("\n \n    n            y           yL_hat         yN_hat")
mprintf("\n     %f    %f    %f      %f",[1:10]',yk(2:$),yL_hat,yN_hat)

mprintf("\n \n Note that values of coefficients for non-linear regression \n are different...
from that of linear regression, but the\n output is the same \n...
hence this shows that the coefficients need not be unique....
\n the coefficients for nonlinear regression given in book and from this scilab code\n...
 both are correct")

