//Example 4.18
clc
disp("For a Colpitts oscillator,")
disp("  f = 1 / 2*pi*sqrt(L*C_eq)")
disp("where  C_eq = C1*C2 / C1+C2  but C1 = C2 = 0.001 uF")
ceq=((0.001*10^-6)^2)/(2*(0.001*10^-6))  // in F
format(7)
disp(ceq,"Therefore,  C_eq(in F) =")
disp("  L = 5*10^-6 H")
f=(1/(2*%pi*sqrt(25*10^-16)))*10^-6  // in MHz
format(6)
disp(f,"Therefore,  f(in MHz) =")
disp("Now L is doubled i.e. 10 uH")
f1=(1/(2*%pi*sqrt(50*10^-16)))*10^-6  // in MHz
format(5)
disp(f1,"Therefore,  f(in MHz) =")
nf= 2*3.183
format(6)
disp(nf,"New frequency(in MHz) = 2*3.183 =")
l=(1/(4*(%pi^2)*((6.366*10^6)^2)*(5*10^-10)))*10^6  // in uH
format(5)
disp(l,"Therefore,  L(in uH) =")
