//Example 4.5.
clc
disp("In an P-type material, the concentration of acceptor atoms is given by")
disp("NA = NV*e^(-(EF - EV)/k*T)")
disp("Let initially NA = NA0, EF = EF0 and EF0 - EV = 0.4 eV")
disp("Therefore,    NA0 = NV*e^(-0.4/0.025) = NV*e^-16")
disp("(a) When NA = 0.5*NA0 and EF = EF1, then")
disp("0.5*NA0 = NV*e^(-(EF1-EV)/0.025) = NV*e^-40(EF1 - EV)")
disp("Therefore,    0.5*NV*e^-16 = NV*e^-40(EF1 - EV)")
disp("Therefore,    0.5 = e^(-40*(EF1 - EV)+16)")
disp("Taking natural logarithm on both sides, we get")
disp("ln (0.5) = -40(EF1 - EV) + 16")
q1=(16-log(0.5))/40
disp(q1,"EF1 - EV(in eV) = ")
disp("(b) When NA=4*NA0 and EF = EF2, then")
disp("ln 4 = -40*(EF2 - EV) + 16")
q2=(16-log(4))/40
disp(q2,"EF2 - EV(in eV) = ")