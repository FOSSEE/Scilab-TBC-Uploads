//Ex11_3
clc
VCEmax = 18// highest value for collector emitter voltage
VCEmin = 2// lowest value for collector emitter voltage
VQ = 9//operating point voltage
disp("VCEmin = "+string(VCEmin)+"V")
disp("VCEmax = "+string(VCEmax)+"V")
disp("VQ = "+string(VQ)+"V")
D2 = [(1/2)*(VCEmax + VCEmin) - VQ]/(VCEmax - VCEmin)*100//second harmonic distortion
disp("D2 = [(1/2)*(VCEmax + VCEmin) - VQ]/(VCEmax - VCEmin)*100")
disp("   ="+string(D2)+"%")

// note : for above problem there is a misprint for the formula given in solution in the textbook
