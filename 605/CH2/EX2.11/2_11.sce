printf("\n\t(a) Find the noise figure of this cascaded system.")
printf("\n\t(b) What would be the noise figure if the amplifier were placed before the transmission line?\n")
// data in question
//ambient temperature(K)
Te=300
To=290
//noise temperature of amplifier(K)
Ta=150
k=1.38*10^-23
//band width(Hz)
B=100*10^6
//gain of amplifier
Gamp=10^(15/10)
// for transmission lines
Gline=1/10^0.2
//data print
printf("\nTe=300K\tTa=150K\tB=100MHz\tGamp=15dB\tattenuation=2dB\n")
//equations and result
printf("\nresult:-")
//noise factor for amplifier
Famp=1+Ta/To
printf("\nFamp=1+Ta/To")
//noise for transmission lines
Fline=1+(1/Gline-1)*Te/To
printf("\nFline=1+(1/Gline-1)*Te/To")
Fcascaded=Fline+(Famp-1)/Gline
printf("\n(a)noise figure of cascaded system\n\tFcascaded=Fline+(Famp-1)/Gline = %.4f",Fcascaded)
printf(" = %.4f dB",10*log10(Fcascaded))
Fcascaded=Famp+(Fline-1)/Gamp
printf("\n(b)if the amplifier is connected before the line\n\tFcascaded=Famp+(Fline-1)/Gamp = %.4f",Fcascaded)
printf(" = %.4f dB",10*log10(Fcascaded))




