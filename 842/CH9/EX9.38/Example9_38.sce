//clear//
//Example9.38:Unilateral  Laplace Transform:Solving Differential Equation
//Y(S)=[beta(s+3)/((s+1)(s+2))]+[gamma/((s+2)(s+2))]+[alpha/(s(s+1)(s+2))]
s = %s;
syms t;
alpha = 2; //input constant
beta_B = 3; //intial condition
gamma_v = -5; //initial condition
Y1 = 1/s;
Y2 = 1/(s+1);
Y3 = 3/(s+2);
Y = Y1-Y2+Y3;
disp(Y)
y = ilaplace(Y,s,t)
disp(y)
//result
// ( -%e^(-t))+3*(%e^(-(2*t)))+1   
