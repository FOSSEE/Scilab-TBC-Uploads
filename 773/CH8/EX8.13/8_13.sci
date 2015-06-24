//coefficient//
syms s t k;
s = poly ( 0,'s' );
y=k/(s*(s+2)); //G(s)H(s)
disp(y,"G(s)H(s)")
//R=laplace('0.2*t',t,s)
R=laplace('0.2*t',t,s)
e=limit(s*R/(1+y),s,0)
//given e<=0.02
a=[0.02];
b=[-0.4];
m=linsolve(a,b);  //Solves The Linear Equation
disp(m,"k")
