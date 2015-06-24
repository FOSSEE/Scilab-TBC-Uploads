//Example 4.12.
clc
format(7)
Ia=0.3*10^-6
VF=0.15
I=Ia*((%e^(40*VF))-1)
I1=I*10^6
disp("The current flowing through the PN diode under forward bias is,")
disp(I1,"I(uA) = Io*(e^40*VF - 1) =")