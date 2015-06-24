//impedance of transmission line
Za=73
//impedance of antenna
Zo=50
//radiation efficiency
ecd=1
I=integrate('(sin(x))^4','x',0,%pi)*2*%pi
Do=4*%pi/I
printf("\nDo=%.4f=%.4f dB",Do,10*log10(Do))
//voltage reflection coefficient
F=(Za-Zo)/(Za+Zo)
printf("\nvoltage reflection coefficient\nF=(Za-Zo)/(Za+Zo)=%f",F)
//mismatch efficiency of antenna
er=1-F^2
printf("\nmismatch efficiency of antenna\ner=1-F^2=%.4f=%.4f dB",er,10*log10(er))
//overall gain
Go=10*log10(Do)+10*log10(er)+10*log10(ecd)
printf("\noverall gain\nGo=Do+er+ecd=%.4f dB",Go)