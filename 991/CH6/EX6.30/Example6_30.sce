//Example 6.30. Refer fig. 6.27.
clc
format(5)
VCC=16
RC=3*10^3
RE=2*10^3
R1=56*10^3
R2=20*10^3
alpha=0.985
VBE=0.3
disp("For a germanium transistor, VBE=0.3V. As alpha=0.985")
beta=alpha/(1-alpha)
beta1=round(beta)
disp(beta1,"beta = alpha / ( 1 - alpha) = ")
disp("(a) To find the coordinates of the operating point")
disp("Referring to fig. 6.29,")
VT=(R2/(R1+R2))*VCC
disp(VT,"Thevenin voltage,     VT(V) = (R2 / (R1+R2)) * VCC = ")
format(7)
RB=(R1*R2)/(R1+R2)
RB1=RB*10^-3
disp(RB1,"Thevenin resistance,  RB(k-ohm) = (R1 * R2) / (R1 + R2) =")
disp("The loop equation around the base circuit is,")
disp("VT = ( IB * RB) + VBE + ((IB + IC)*RE)")
disp("VT = ((IC / beta) * RB) + VBE + (((IC / beta) + IC)*RE)")
format(5)
IC=(VT-VBE)/((RB/beta)+(RE/beta)+RE)
IC1=IC*10^3
disp(IC1,"Therefore,   IC(mA) = ")
disp("Since IB is very small, IC ~ IE = 1.73 mA")
IE=IC
VCE=VCC-(IC*RC)-(IE*RE)
disp(VCE,"Therefore,    VCE(V) = VCC - (IC*RC) - (IE*RE) = ")
disp("Therefore, the coordinates of the operating point are :")
disp(IC1,"IC(mA) = ")
disp(VCE,"VCE(V) = ")
disp("(b) To find the stability factor S")
disp("S = (1+beta)*((1+(RB/RE))/(1+beta+(RB/RE)))")
format(6)
S = (1+beta)*((1+(RB/RE))/(1+beta+(RB/RE)))
disp(S,"S = ")