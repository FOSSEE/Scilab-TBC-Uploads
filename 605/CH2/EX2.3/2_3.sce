printf("\nunit vector along the polarization of incident wave is ui=[1 0 0]")
ui=[1 0 0];
printf("\nunit vector along the antenna polarization ua=[1 1 0]*(1/sqrt(2))\n")
ua=[1 1 0]*(1/sqrt(2));
d=ui*ua'
printf("\npolarization loss factor |ui*ua|^2=%.2f",d^2)
printf("=%.2f dB",10*log10(d^2))