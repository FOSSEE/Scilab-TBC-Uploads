Rb=270.833*10^3//channel data rate
C=Rb/0.4//maximum data rate
B=200*10^3
SIN=2^(C/B)-1//from C=B*log2(1+S/N) (shannon's capacity formula)
SINdB=10*log10(SIN)
disp(SINdB,'the corresponding theoretical S/N in dB is')
