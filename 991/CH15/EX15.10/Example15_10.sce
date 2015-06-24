//Example 15.10.
clc
format(6)
disp("(i) To find capacitance, C:")
disp("    Frequency of oscillation is")
disp("  fo = 1 / 2*pi*fo*R*C*sqrt(6+4K)")
disp("  C = 1 / 2*pi*fo*R*C*sqrt(6+4(Rc/R))")
fo=1/(2*%pi*(10*10^3)*(7.1*10^3)*sqrt(6+((4*40*10^3)/(7.1*10^3)))) // in Farady
x1=fo*10^9 // in nF
disp(x1,"  C(nF) =")
disp("(ii) To find hfe:")
disp("  We know that    hfe >= 23 + 29(R/Rc) + 4(Rc/R)")
h=23+(29*(7.1/40))+(4*(40/7.1))
disp(h,"                  hfe >=")