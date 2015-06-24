//Ex11_5
clc
VCC = 9//collector voltage
Vp = 5//output peak voltage
VQ = VCC//operating point
VCEmax = VQ + Vp// maximum value of collector emitter voltage
VCEmin = VQ - Vp// minimum value of collector emitter voltage
disp("VCC = "+string(VCC)+"V")
disp("Vp = "+string(Vp)+"V")
disp("VQ = VCC = "+string(VQ)+"V")
disp("VCEmax = VQ + Vp = "+string(VCEmax)+"V")
disp("VCEmin = VQ - Vp = "+string(VCEmin)+"V")
eta = 50*[(VCEmax - VCEmin)/(VCEmax + VCEmin)]//amplifier efficiency
disp("eta = 50*[(VCEmax - VCEmin)/(VCEmax + VCEmin)] = "+string(eta)+"%")
