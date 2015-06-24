//Example 6.27. refer fig.6.26.
clc
format(6)
disp("(i) DC load line:")
disp("      VCE = VCC - IC*RC")
disp("When  IC = 0, VCE = VCC = 6V")
IC=6/(3*10^3) //in Ampere
x1=IC*10^3  //in mA
disp(x1,"When  VCE = 0, IC(mA) = VCC/RC =")
disp("")
disp("(ii) Operating point Q:")
disp("     For silicon transistor,  VBE = 0.7V")
disp("                              VCC = IB*RB + VBE")
IB=(6-0.7)/(530*10^3)
x2=IB*10^6
disp(x2,"Therefore,              IB(uA) = VCC-VBE / RB =")
IC=100*10*10^-6 // in Ampere
x3=IC*10^3 // in mA
disp(x3,"Therefore,              IC(mA) = beta*IB =")
VCE=6-((1*10^-3)*(3*10^3)) // in volts
disp(VCE,"                           VCE(V) = VCC - IC*RC =")
disp("Therefore operating point is VCEQ = 3 V and ICQ = 1 mA")
disp("")
disp("(iii) Stability factor:    S = 1 + beta = 1 + 100 = 101")
x=[6,0]
y=[0,2]
plot2d(x,y,style=1)
xtitle("DC load line","VCE (V) --->","IC (mA) --->")