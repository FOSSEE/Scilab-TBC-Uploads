//Example 2.13
clc
disp("Given, C1 = 100 pF,  C2 = 50 pF,  f = 10 MHz,  L = ?")
ceq=(5000*10^-24)/(150*10^-12)
format(10)
disp(ceq,"C_eq(in F) = C1*C2 / C1+C2 = ")
disp("f = 1 / 2*pi*sqrt(L*C_eq)")
l=(1/(4*(%pi^2)*(33.33*10^-12)*((10*10^6)^2)))*10^6  // in F
format(4)
disp(l,"Therefore, L(in uH) =")
