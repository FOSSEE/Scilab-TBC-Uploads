//Example 4.13.
clc
format(7)
VF=0.6
T=298
Io=10^-5
eta=2
VT=T/11600
disp("The volt-equivalent of the temperature(T) is,")
disp(VT,"VT(V) = T / 11600 = ")
format(6)
I=Io*((%e^((VF/(eta*VT))))-1)
disp(I,"Therefore, the diode current, I(A) = Io*e^((VF/eta*VT)-1) =")