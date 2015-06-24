//Example 6.31.
clc
format(4)
VCE=12
IC=2*10^-3
VCC=24
VBE=0.7
beta=50
RC=4.7*10^3
S=5.1
disp("(a) To determine RE,")
disp("VCE = VCC - (IC*RC) - (IE*RE)")
RE = (VCC - (IC*RC) - VCE)/IC  //IC=IE
RE1=RE*10^-3
disp(RE1,"Therefore,  RE(k-ohm) = ")
disp("")
disp("(b) To determine R1 and R2,")
disp("Stability factor,  S = (1+beta)/(1+beta(RE+(RE+RB))),    where RB = (R1*R2)/(R1+R2)")
RB=((RE*beta)/(((1+beta)/S)-1))-RE
RB1=(RB*10^-3)
disp(RB1,"Therefore,  RB(k-ohm) = ((RE*beta) / (((1+beta)/S)-1)) - RE =")
disp("Also, for a good voltage divider, the value of resistor R2 = 0.1*beta*RE")
R2=0.1*beta*RE
R2_1=R2*10^-3
disp(R2_1,"Therefore,    R2(k-ohm) = ")
disp("RB = (R1*R2) / (R1+R2)")
R1=(5.9*10^3*R2)/(R2-(5.9*10^3)) //RB=5.9
R1_1=round(R1*10^-3)
disp(R1_1,"Therefore, R1(k-ohm) = R2 / ((R2/RB)-1)")