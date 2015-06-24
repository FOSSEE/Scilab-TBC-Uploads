//date in question
//transmitting antenna gain (dB)
Gt=37
// ground station antenna gain (dB)
Gr=45.8
//frequency of signal
f=20*10^3
//distance from ground station
R=36941.031
//data print
printf("\nGt=37\tGr=45.8\tf=20GHz\tR=36941.031km\n")
//equation and result
printf("\nresult:-")
Pt=10*log10(2000)
printf("\npower transmitted\n\tPt=10*log10(2000)=%.4f dB\n",Pt)
Pr=Pt+Gt+Gr-20*log10(f*R)-32.4418    //Pt,Pr in dBm and Gt,Gr in dB f in MHz and R in km
printf("\npower received at earth station\n\tPr=Pt+Gt+Gr-20*log10(f*R)-32.4418=%f dBm",Pr)
Gt=0    //Gt in dB
Gr=0    //Gr in dB
Pr=Pt+Gt+Gr-20*log10(f*R)-32.4418 
printf("\nif two antennas are isotropic \n\tPr=%f dBm=%.4emW",Pr,10^(Pr/10))