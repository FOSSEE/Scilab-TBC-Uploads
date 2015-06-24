//Example 6.33. refer from fig.6.31.
clc
VCC=22
RC=2*10^3
beta=60
VBE=0.6
R1=100*10^3
R2=5*10^3
RE=100
disp("For the given circuit")
disp("          VCC = R1*(I1+IB) + I1*R2")
disp("           I1 = (VCC - IB*R1) / (R1 + R2)                  Eq.1")
disp("Further,  VCC = R1*[I1+IB] + VBE + IE*RE")
disp("As,        IE = IC + IB")
disp("              = beta*IB + IB = (1 + beta)*IB")
disp("Hence,    VCC = R1*[I1 + IB] + VBE + (1 + beta)*IB*RE")
disp("Substituting for I1 from Eq.1,")
disp("          VCC = R1*[[(VCC - IB*R1)/R1+R2] - IB] + VBE + (1 + beta)*IB*RE")
disp("          VCC = R1*[(VCC + IB*R2)/R1+R2] + VBE + (1 + beta)*IB*RE")
format(6)
a=VCC-VBE-((R1*VCC)/(R1+R2))
c=(((R1*R2)/(R1+R2))+((1+beta)*RE))
IB=a/c
IB1=IB*10^6
disp("Substituting for VCC, R1, R2, VBE, beta and RE, ")
disp(IB1,"       IB(uA) =")
format(5)
IC=beta*IB
IC1=IC*10^3
disp(IC1,"       IC(mA) =")
disp("Applying KVL to collector circuit,")
disp("         VCC = IC*RC + VCE + IE*RE = IC*RC + VCE + (1+beta)*IB*RE")
disp("Hence,   VCE = VCC - IC*RC - (1+beta)*IB*RE")
format(7)
VCE = VCC - (IC*RC) - ((1+beta)*IB*RE)
disp(VCE,"     VCE(V) = ")
disp("To find stability factor, (S):")
disp("Stability factor for voltage divider bias is")
format(5)
RB=(R1*R2)/(R1+R2)
S=(1+beta)/(1+(beta*(RE/(RE+RB))))
disp(S,"          S =(1+beta)/(1+(beta*(RE/(RE+RB)))) =        where RB = R1 || R2")
