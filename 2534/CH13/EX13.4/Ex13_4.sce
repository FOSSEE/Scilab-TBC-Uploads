//Ex13_4
clc
C1 = 1*10^-9//capacitance of capacitor 1
C2 = 10*10^-9//capacitance of capacitor 2
L = 110*10^-6//inductance of inductor
beta = C1/C2//feedback factor
f0 = ((C1+C2)/(C1*C2*L))^.5/(2*%pi)//operating frequency
disp("C1 = "+string(C1)+"F")
disp("C2 = "+string(C2)+"F")
disp("L = "+string(L)+"H")
disp("beta = "+string(beta))
disp("f0 = ((C1+C2)/(C1*C2*L))^.5/(2*pi) = "+string(f0)+"Hz")

//note : unit given for inductance "L" is wrong in the textook for the above question.
