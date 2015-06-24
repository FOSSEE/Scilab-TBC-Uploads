//Example 15.5.
clc
format(5)
L=40*10^-3
C1=100*10^-12
C2=500*10^-12
Vo=10
disp("(i) In a Colpitts oscillator, a series combination of C1 and C2 which is in parallel with inductance L and frequency of oscillations is")
fo=1/ (2*%pi*sqrt((L*C1*C2)/(C1+C2)))
x1=fo*10^-3
disp(x1,"    fo(kHz) = 1 / 2pi*sqrt(LCeq) = 1 / 2pi*sqrt(L*C1*C2/C1+C2) =")
disp("(ii) The output potential is across C1 and is proportional to XC1, and the feedback voltage is across C2 and proportional to XC2. Therefore,")
disp("Vo/Vf = XC1/XC2 = (1/omega*C1)/(1/omegaC2) = C2/C1")
Vf=(Vo*C1)/C2
disp(Vf,"Hence,  Vf(V) = Vo*C1 / C2 =")
disp("(iii) Since the gain depends upon C1 and C2 only and is independent of L,")
gain=C2/C1
disp(gain,"  Gain = 500*10^-12 / 100*10^-12 =")
disp("(iv) When the gain is equal to 10, C2/C1 = 10")
x2=C2/10
x3=x2*10^12
disp(x3,"Therefore,  C1(pF) = C2 / 10 =")
disp("(v) The frequncy of oscillation is")
fo=1/ (2*%pi*sqrt((40*50*500*10^-27)/((50*10^-12)+(500*10^-12))))
x4=fo*10^-3
format(7)
disp(x4,"fo(kHz) =")