//Example 6.1
clc;
syms s t;
tau=1;//min
R=1/9;//ft/cfm
A=9;
//from Equation 6.8
g=R/(tau*s+1);
disp(g,'H(s)/Q(s)=')
//from Example 4.5 
disp('Q(t)=90[u(t)-u(t-0.1)')
//where u(t) is a unit step function, the laplace transform of it gives
Qs=90*(1-exp(-0.1*s))/s
disp(Qs,'Q(s)=')
Hs=Qs*g;
disp(Hs,'H(s)=')
//taking first term for t<0.1, the second term goes equals to zero
Ht=ilaplace('10*(1/(s*(s+1)))',s,t);//t<0.1
disp(Ht,'H(t)=')
disp('H(t)=10(1-yexp(-(-t-0.1)))')//t>0.1
Ht=10*((1-exp(-t))-(1-exp(-(-t-0.1))));
disp(Ht,'H(t)=')
//from Eq.(5.16)
Ht=R*A*exp(-(t/tau));//impulse 
disp(Ht,'H(t)=')

