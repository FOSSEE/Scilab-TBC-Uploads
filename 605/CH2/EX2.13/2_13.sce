//noise factor
F=10^(10/10)
//equation and result
printf("\nresult:-")
printf("\n(a)B=1MHz")
B=1
Pimds=-111+F+10*log10(B)     //F in dB, B in MHz, Pidms in dBm
printf("\n\tPimds=-111+F+10*log10(B)\n\tPimds=%.1f dBm",Pimds)
printf(" = %.2e mW",10^(Pimds/10))
printf("\n(b)B=1GHz")
B=1000
Pimds=-111+F+10*log10(B)     //F in dB, B in MHz, Pidms in dBm
printf("\n\tPimds=-111+F+10*log10(B)\n\tPimds=%.1f dBm",Pimds)
printf(" = %.2e mW",10^(Pimds/10))

printf("\n(c)B=10GHz")
B=10000
Pimds=-111+F+10*log10(B)     //F in dB, B in MHz, Pidms in dBm
printf("\n\tPimds=-111+F+10*log10(B)\n\tPimds=%.1f dBm",Pimds)
printf(" = %.2e mW",10^(Pimds/10))
printf("\n(d)B=1kHz")
B=0.001
Pimds=-111+F+10*log10(B)     //F in dB, B in MHz, Pidms in dBm
printf("\n\tPimds=-111+F+10*log10(B)\n\tPimds=%.1f dBm",Pimds)
printf(" = %.2e mW",10^(Pimds/10))