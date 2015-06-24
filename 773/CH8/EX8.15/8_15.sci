//coefficient//
s = poly ( 0,'s' );
sys = syslin ('c',180/(s*(s+6))) //G(s)H(s)
disp(sys,"G(s)H(s)")
syms t s;
//R=laplace('4*t',t,s)
R=laplace('4*t',t,s);
e=limit(s*R/(1+sys),s,0);
y=dbl(e);
disp(y,"steady state error")
syms  k real;
//value of k if error reduced by 6%;
e1=limit(s*R/(1+k/(s*(s+6))),s,0)    //-------1
e1=0.94*e    // --------2
//now solving these two equations
a=[47];
b=[-9000];
m=linsolve(a,b);
disp(m,"k")
