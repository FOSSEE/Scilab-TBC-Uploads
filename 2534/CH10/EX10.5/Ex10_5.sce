//Ex10_5
clc
Av = 40//voltage gain in decibles
disp("Av = "+string(Av)+"dB")
Av = 10^(Av/20)//voltage gain in V/V
disp("Av = "+string(Av))
Avf = 20//voltage gain with negative feedback in decibles
disp("Avf = "+string(Avf)+"dB")
Avf = 10^(Avf/20)//voltage gain with negative feedback in V/V
disp("Avf = "+string(Avf))
beta = ((Av/Avf)-1)/Av//feedback ratio
disp("beta = (Av/Avf - 1)/Av = "+string(beta))



// note: solution in the textbook for the above problem is wrong.
