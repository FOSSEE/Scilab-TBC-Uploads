//Example 9.21. refer fig.9.87.
clc
format(6)
VEE=15
VBE=0.7
REE=65*10^3
disp("The emitter current can be found by writing a loop equation starting at the base of Q1")
disp("    VBE + 2*IE*REE - VEE = 0")
IE = (VEE - VBE)/(2*REE)
IE1=IE*10^6
disp(IE1,"     IE(uA) = (VEE - VBE)/2*REE =")
alphaF=100/101
IC=(alphaF*IE)
IC1=IC*10^6
disp(IC1,"    IC(uA) = alpha_F*IE =")
betaF=100
IB=IC/betaF
IB1=IB*10^6
disp(IB1,"    IB(uA) = IC / beta_F =")
VCC=VEE
RC=REE
VC=VCC-(IC*RC)
disp(VC,"    VC(V) = VCC - IC*RC =")
VE=-0.7
VCE=VC - VE
disp(VCE,"    VCE(V) = VC - VE =")
disp("Both transistor of the differential amplifier are based at a Q-point(108.9 uA, 8.621 V) with IB = 1.089 uA and VC = 7.921 V")
disp("As VEE >> VBE, IE can be approximated by")
format(7)
IE=(VEE/(2*REE))*10^6
disp(IE,"    IE(uA) = VEE / 2*REE =")