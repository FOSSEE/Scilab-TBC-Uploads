//Example 4.22
clc
disp("  f = 2.5 MHz,  L = 10 uH,  C1 = 0.02 uF")
disp("For Colpitts oscillator, the frequency is given by,")
disp("  f = 1 / 2pi*sqrt(L*C_eq)")
ceq=(1/(4*(%pi^2)*((2.5*10^6)^2)*(10*10^-6)))*10^12  // in pF
format(8)
disp(ceq,"Therefore,  C_eq(in pF) =")
disp("(i)But    C_eq = C1*C2 / C1+C2")
c2=((0.02*10^-6)/49.348)*10^9  // in nF
format(7)
disp(c2,"Therefore,  C2(in nF) =")  // answer in textbook is wrong
disp("(ii)    L = 2*10 = 20 uH")
disp("and  C_eq = 405.284 pF")
f=(1/(2*%pi*sqrt(20*405.284*10^-18)))*10^-6  // in MHz
disp(f,"  f(in MHz) = 1 / 2*pi*sqrt(L*C_eq) =")
