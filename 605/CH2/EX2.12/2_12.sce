//data in question
//noise factor of A1
F1=10^(3/10)
//noise factor of A2
F2=10^(5/10)
//gain of amplifier A1
G1=10^(20/10)
//gain of amplifier A2
G2=10^(20/10)
//data print
printf("\nF1=3dB\tF2=5dB\tG1=G2=20dB\n")
//equation and result
printf("\nresult:-")
//overall gain of cascaded system
G=G1*G2
printf("\noverall gain of cascaded system\nG=G1*G2= %.2f",G)
printf(" = %.0f dB",10*log10(G))
//overall noise figure of cascaded system
F=F1+(F2-1)/G1
printf("\noverall noise of cascaded system\nF=F1+(F2-1)/G1 = %.6f",F)    //some difference in result is due to approx in calculation
printf(" = %.3f dB",10*log10(F))
F=F2+(F1-1)/G2
printf("\noverall noise of cascaded system when order of amplifiers is changed\nF=F2+(F1-1)/G2 = %.6f",F)
printf(" = %.6f dB",10*log10(F))





