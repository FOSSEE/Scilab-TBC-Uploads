//exmaple8.1
clc
disp("Given : I_E=12 mA, I_E= 1.02(I_c)")
disp("Therefore, 1.02(I_c)=12*10^-3")
i=(12*10^-3)/1.02
format(9)
disp(i,"I_c(in A)=")
disp("I_E = I_B + I_c")
b=12-11.765
disp(b,"Therefore, I_B(in mA) = I_E - I_c = (12-11.765)mA = ")
