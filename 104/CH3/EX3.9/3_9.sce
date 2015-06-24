//finding transfer function from state diagram by applying gain formula
//state diagram is shown in fifure 3-21
syms s
//initial conditions are sset to zero
M1=s^-1*s^-1
L11=-3*s^-1
L21=-2*s^-1*s^-1
delta=1-(L11+L21)
delta1=1
x=M1*delta1/delta
disp(x,"Y(s)/R(s)=")