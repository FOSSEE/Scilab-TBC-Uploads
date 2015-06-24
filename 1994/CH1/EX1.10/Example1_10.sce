//Chapter-1,Example1_10,pg 1_41
rd=200*10^3
gm=0.004
Rs=40*10^3
Rm=1000
V1=1
rdf=rd/(1+gm*rd)//actual rd
Rth=(2*Rs*rdf/(Rs+rdf))
Vo=(gm*rdf*Rs)*V1/(rdf+Rs)
Im=50*10^-6
Rcal=(Vo/Im)-Rth-Rm//caliberation resistance
printf("caliberation resistance\n")
printf("Rcal=%.2f ohm",Rcal)
