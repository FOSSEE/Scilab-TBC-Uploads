//Ex4_1
clc
Irs = 0.2*10^-6
Vf = 0.1
VT = 26*10^-3
eta = 1//for germanium
I = Irs*(exp(Vf/eta/VT)-1)
disp("Irs = "+string(Irs)+"A")//reverse saturation current
disp("Vf = "+string(Vf)+"V")//applied voltage
disp("VT = "+string(VT)+"V")//voltage at room temperature
disp("eta = "+string(eta))
disp("I = Irs*(exp(Vf/eta/VT)-1)")//current at room temperature
disp("I = "+string(I)+"A")

//current in silicon:
eta = 2//for silicon
disp("eta = "+string(eta))
I = Irs*(exp(Vf/eta/VT)-1)
disp("I = "+string(I)+"A")




// note: incomplete solution in textbook for above question.
