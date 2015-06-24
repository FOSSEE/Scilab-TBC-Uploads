//Chapter-8,Example8_3,pg 8_18
R1=7*10^3
R2=2*10^3
R3=4*10^3
R4=20*10^3
E=8
Rg=300
Vth=(E*R4/(R3+R4))-(E*R1 /(R1+R2))//voltage divider rule
Req=(R1*R2/(R1+R2))+(R3*R4/(R3+R4))
Ig=Vth/(Req+Rg)
printf("current through galvanometer\n")
printf("Ig=%.7f A",Ig)
