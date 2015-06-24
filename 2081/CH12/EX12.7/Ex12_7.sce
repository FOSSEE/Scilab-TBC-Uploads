Bc=1.25*10^6
Rb=9600
PfdB=6
Pf=10^(PfdB/10)
SrmindB=3
Srmin=10^(SrmindB/10)
Mmax=((Bc/Rb)*(1/Srmin))*(Pf)//maximum users

SrmaxdB=9
Srmax=10^(SrmaxdB/10)
Mmin=((Bc/Rb)*(1/Srmax))*(Pf)//minimum users


mprintf('A single cell IS-95 CDMA system can support from %i to %f users',Mmin,Mmax)

