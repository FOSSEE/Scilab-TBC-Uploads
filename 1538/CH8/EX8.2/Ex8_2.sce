//example-8.2
//page no-235
//given
//density of alpha and beta phases
rhoalpha=10300  //kg/m^3
rhobeta=7300  //kg/m^3
//refer to fig-8.5 in book
//at point B, the composition of lead in alpha-phase is 82% and that of tin in alpha-phase is 18%
leadalpha=82
tinalpha=18
//so we get
//82/rholead+18/rhotin=100/rhoalpha   -----------(1)
//similarly at point E
//the composition of tin and lead resp are 97% and 3%
leadbeta=3
tinbeta=97
//so we get
//3/rholead+97/rhotin=100/rhobeta  ------(2)
//solving 1 and 2
//we get
rholead=11364.1  //kg/m^3
rhotin=7220.14  //kg/m^3
//let density of eutectic composition is rhoe. knowing the compositions at point D, we can write
//38/rholead+62/rhotin=100/rhoe
//so 
rhoe=100/(38/rholead+62/rhotin)   //kg/m^3
//it is given that there is 88% eutectic composition by volume. its conversion in weight proportions yeild
W=88/100*rhoe  //kgf
Wlead=38/100*W  //Kgf
Wtin=62/100*W   //kgf
//there is 12% beta phase by volume which on converion to weight proportion gives
Wdash=12/100*rhobeta  //Kgf
Wdashlead=3/100*Wdash  //kgf
Wdashtin=97/100*Wdash  //kgf
//total weight of lead and tin can be estimated now as
Wddashlead=Wlead+Wdashlead  //kgf
Wddashtin=Wtin+Wdashtin  //kgf
//percentafe of tin
percenttin=Wddashtin/(Wddashtin+Wddashlead)*100 
printf ("percentace of tin is %f",percenttin)
