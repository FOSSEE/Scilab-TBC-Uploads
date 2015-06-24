//Chapter-8,Example8_14,pg 59
R=500
delR=20
E=10
Vth=E*delR/(4*R)
Req=R
Rg=125
Ig=Vth/(Req+Rg)
printf("current through galvanometer\n")
printf("Ig=%.8f A",Ig)
