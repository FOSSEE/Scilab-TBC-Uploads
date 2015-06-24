//Example 15.9.
clc
format(5)
fo=1/(2*3.142*10000*(0.01*10^-6)*sqrt(6+((4*2.2*10^3)/(10000)))) //in Hz
disp("The frequency of oscillations of a RC phase shift oscillator is")
disp("  fo = 1 / 2*pi*R*C*sqrt(6+(4*Rc/R))")
disp("Substituting the given values, we get")
disp(fo,"fo(Hz) =")
disp("For sustained oscillations, the minimum value of current gain or forward current gain hfe is")
disp("         beta = hfe = 23 + 29(R/Rc) + 4(Rc/R)")
format(6)
beta=23+(29*(10/2.2))+(4*(2.2/10))
disp(beta,"Therefore, beta =")