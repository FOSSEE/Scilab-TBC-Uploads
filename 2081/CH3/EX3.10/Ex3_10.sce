fcMhz=900
ht=100
hr=2
rkm=4
ardB=3.2*log10(11.75*hr)^2-4.97//correlation factor
LpHurbandB=69.55+26.16*log10(fcMhz)-13.82*log10(ht)+(44.9-6.55*log10(ht))*log10(rkm)-ardB//median path loss in urban area

disp(LpHurbandB,'median path loss in urban area in dB')
