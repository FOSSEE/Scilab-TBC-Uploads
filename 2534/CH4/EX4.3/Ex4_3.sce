//Ex4_3
clc
If = 3*10^-3//forward current
eta = 1//for germanium
T = 300//room temperature
VT = T/11600//voltage at room temperature
disp("If = "+string(If)+"A")
disp("eta = "+string(eta))
disp("T = "+string(T)+"degreeK")
disp("VT = "+string(VT)+"V")
Rdf = (eta*VT/If)//dynamic resistance at room temprature
disp("Rdf = (eta*VT/If) = "+string(Rdf)+"ohm")
