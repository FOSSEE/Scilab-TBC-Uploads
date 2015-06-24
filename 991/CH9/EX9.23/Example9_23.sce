//Example 9.23. refer fig.9.89
clc
VS1=60*10^-3
VS2=40*10^-3
hie=3.2*10^3
hfe=100
VEE=12
VCC=VEE
VBE=0.7
beta=hfe
RE=5.6*10^3
RS=120
RC=4.5*10^3
Rc=4.5*10^-5
format(6)
IE=(VEE-VBE)/((2*RE)+(RS/beta))
IE1=IE*10^3
disp("beta = hfe = 100")
disp(IE1,"    IE(mA) = (VEE-VBE) / ((2*RE)+(RS/beta))")
IC=IE
disp("IC ~ IE = 1.009 mA")
disp(IE1,"    Therefore       ICQ(mA) =")
format(5)
VCE=VCC+VBE-(IC*Rc)
disp(VCE,"    VCE(V) = VCC + VBE - IC*RC =")  // answer in textbook is wrong
disp(VCE,"and      VCEQ(V) =")  // answer in textbook is wrong
disp("The differential gain is")
format(7)
Ad=(hfe*RC)/(RS+hie)
disp(Ad,"      Ad = hfe*RC / RS+hie =")
disp("Common mode gain is,")
format(7)
AC=(hfe*RC)/(((2*RE)*(1+hfe))+RS+hie)
disp(AC,"    AC = (hfe*Re) / (((2*RE)*(1+hfe)) + RS + hie) =")
format(8)
CMRR = Ad / AC
disp(CMRR,"CMRR = Ad / AC =")
format(7)
CMRR1=20*log10(135.54/0.3966)
disp(CMRR1,"CMRR(dB) = 20log|Ad/AC| =")
disp("The output voltage is Vo = Ad*Vd + AC*VC. Here,")
Vd=VS1-VS2
Vd1=Vd*10^3
disp(Vd1,"     Ad [mV(peak-peak)] = VS1 - VS2 =")
VC=(VS1+VS2)/2
VC1=VC*10^3
disp(VC1,"Then,      VC [mV(peak-peak)]= (VS1+VS2) / 2 =")
format(5)
Vo = Ad*Vd + AC*VC
disp(Vo,"Therefore,      Vo [V(peak-peak)] =")