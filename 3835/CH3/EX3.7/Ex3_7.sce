clear
//
//given
fluxa=1.4*10**-3
area=0.002
B=fluxa/area  //flux density in air gap 
printf("\n B= %0.3f  Wb/m**2",B)
//u1=4*3.14*10**-7
//ha=B/u1 in AT/m    //magnetic field in air gap
ha=55.7
la=2  //length of air gap in m
mmf=ha*la  //mmf of air gap
printf("\n mmf= %0.3f  AT",mmf)
//since the flux density of central limb is 0.7 the corresponding field srength is h1=250AT/m
h1=250
mmfl=112.45  //mmf for magnetic central limb-->mmf=250*(450-0.2)*10**-3
totmmf=mmf+mmfl
printf("\n totmmf= %0.5f  AT",totmmf)
//mean length of core CGHF=0.75m
ml=0.75 //as above
//since the central limb and magnetic core are in parallel they have same mmf that is 223.86AT
h2=totmmf/ml //magnetic intensity in CGHF
printf("\n h2= %0.5f  AT",h2)
flux2=B*area  
printf("\n flux2= %0.5f  Wb",flux2)
totflux=fluxa+flux2  //Wb
Bfabc=totflux/area   //flux density in magnetic core fabc in Wb/m**2
H=3000 //AT/m
totmmffabc=H*ml  //total mmf in fabc in AT
printf("\n total mmf in fabc= %0.5f  Wb/m**2",totmmffabc)
totmmfm=totmmffabc+totmmf  //total mmf in magnetic core in AT
printf("\n totmmfm= %0.5f  AT",totmmfm)
N=500
I=totmmfm/N   //The required current to set up flux in air gap
printf("\n The total current required to set up flux in air gap is= %0.5f  A",I)
