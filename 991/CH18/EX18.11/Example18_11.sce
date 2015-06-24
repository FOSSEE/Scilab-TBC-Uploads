//Example 18.11
clc
rl=(10/(200*10^-3))  // in ohm
c2=11.4/0.02
format(4)
c=sqrt(570)  // in uF
disp(rl,"    RL(ohm) =")
disp("    0.02 = 5700 / L*C1*C2*50 = 114 / L*C1*C2")
disp("If we assume L = 10 mH and  C1 = C2 = C, we have")
disp("    0.02 = 114 / L*C^2 = 11.4 / C^2")
disp(c2,"    C^2 =")
disp(c,"therefore,C(uF) =")