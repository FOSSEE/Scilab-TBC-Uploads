//Example 4.4.
clc
format(6)
disp("In an N-type material, the concentration of donor atoms is given by")
disp("ND = NC*e^(-(EC - EF)/k*T)")
disp("Let initially ND = ND0, EF = EF0 and EC - EF0 = 0.2 eV")
disp("Therefore,    ND0 = NC*e^(-0.2/0.025) = NC*e^-8")
disp("(a) When ND = 4ND0 and EF = EF1, then")
disp("4*ND0 = NC*e^(-(EC-EF1)/0.025) = NC*e^-40(EC - EF1)")
disp("Therefore,    4*NC*e^-8 = NC*e^-40(EC - EF1)")
disp("Therefore,    4 = e^(-40*(EC - EF1)+8)")
disp("Taking natural logarithm on both sides, we get")
disp("ln 4 = -40(EC - EF1) + 8")
q1=(8-log(4))/40
disp(q1,"EC - EF1(in eV) = ")
disp("(b) When ND=8*ND0 and EF = EF2, then")
disp("ln 8 = -40*(EC - EF2) + 8")
q2=(8-log(8))/40
disp(q2,"EC - EF2(in eV) = ")