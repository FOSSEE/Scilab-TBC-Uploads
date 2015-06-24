//Chapter-1,Example1_9,pg 1_40
rd=10*10^3
gm=0.003
rdf=rd/(1+gm*rd)//actual rd
Rs=15*10^3
V1=1//input voltage
Vo=(gm*rdf*Rs)*V1/(rdf+Rs)
Rth=(2*Rs*rdf/(Rs+rdf))
Rm=1800
Im=Vo/(Rth+Rm)
Img=0.1*10^-3//meter current given
Rf=(Vo/Img)-Rth-Rm//series resistance
printf("current Im=%.5f A\n",Im)
printf("seires resistance\n")
printf("Rf=%.2f ohm\n",Rf)
