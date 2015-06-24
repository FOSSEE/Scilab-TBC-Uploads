//Examle 4.24
clc
disp("(i)  Assume one perticular coupling direction for which,")
disp("  L_eq = L1 + L2 + 2M = 0.25 mH")
format(8)
f=(1/(2*%pi*sqrt(0.25*100*10^-15)))*10^-6  // in MHz
disp(f,"Therefore,  f(in MHz) = 1 / 2*pi*sqrt(L_eq*C) =")
disp("Let the direction of coupling is reversed,")
disp("  L_eq = L1 + L2 - 2M = 0.15 mH")
fd=(1/(2*%pi*sqrt(0.15*100*10^-15)))*10^-6  // in MHz
format(7)
disp(fd,"Therefore,  f''(in MHz) = 1 / 2*pi*sqrt(L_eq*C) =")
pc=((1.2994-1.00658)/1.00658)*100  // in percentage
format(6)
disp(pc,"Therefore,  % change = f''-f/f * 100 =")
disp("(ii)  Let us assume direction of coupling such that,")
disp("  L_eq = L1 + L2 + 2M = 0.25 mH")
disp("   C_t = Trim capacitor = 100 pF")
disp("Therefore,  C_eq = C*C_t / C+C_t = 50 pF")
f1=(1/(2*%pi*sqrt(0.25*50*10^-15)))*10^-6  // in MHz
format(7)
disp(f1,"Therefore,  f = 1 / 2*pi*sqrt(L_eq*C_eq) =")
disp("If now direction of coupling is reversed,")
disp("  L_eq = L1 + L2 - 2M = 0.15 mH")
f2=(1/(2*%pi*sqrt(0.15*50*10^-15)))*10^-6  // in MHz
format(8)
disp(f2,"Therefore,  f'' = 1 / 2*pi*sqrt(L_eq*C_eq) =")
pc1=((1.83776-1.4235)/1.4235)*100
format(7)
disp(pc1,"Therefore,  % change = f''-f/f * 100 =")
