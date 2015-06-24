Gv=2.5//interfernce reduction factor
Ga=2.5//antenna sectorisation gain factor
a=1.6//interfence increase factor
Pf=(Gv*Ga)/a
PfdB=10*log10(Pf)
disp(PfdB,'perfomance improvement factor Pf in dB')
