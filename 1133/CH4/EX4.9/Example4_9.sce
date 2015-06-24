//Example 4.9
clc
disp("The given values are,")
disp("   L = 100 uH,   C1 = C2 = C   and   f = 500 kHz")
disp("Now,    f = 1 / 2*pi*sqrt(L*C_eq)")
ceq=1/(4*(%pi^2)*(100*10^-6)*((500*10^3)^2))  // in F
format(11)
disp(ceq,"Therefore, C_eq(in F) =")
disp("but    C_eq = C1*C2 / C1+C2    and C1 = C2 = C")
disp("Therefore,  C_eq = C / 2")
c=1.0132*2
format(6)
disp(c,"Therefore,  C(in nF) =")
