//Example 4.8
clc
disp("The equivalent capacitance is given by,")
ceq=(150*1.5*10^-21)/((150*10^-12)+(1.5*10^-9))  // in F
format(12)
disp(ceq,"  C_eq(in F) = C1*C2 / C1+C2 =")
disp("Now,  f = 1 / 2*pi*sqrt(L*C_eq)")
f=(1/(2*%pi*sqrt(50*136.363*10^-18)))*10^-6  // in MHz
format(6)
disp(f,"  f(in MHz) =")
