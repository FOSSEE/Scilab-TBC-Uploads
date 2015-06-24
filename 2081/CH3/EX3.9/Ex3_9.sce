fcMhz=800
ht=30
hr=2
rkm=10
LpHdB=68.75+26.16*log10(fcMhz)-13.82*log10(ht)+(44.9-6.55*log10(ht))*log10(rkm)//propogation path loss using hata model
LpfdB=110.5//prpogation path loss using free space model 
D=LpHdB-LpfdB
disp(LpHdB,'propogation path loss using hata model in dB')
disp(LpfdB,'propogation path loss using free space model in dB')
disp(D,'difference between 2 propogation path loss  in dB')
