//Chapter-8,Example8_17,pg 8_62
R1=100
R2=10
R3=4
R4=50
E=10
Rg=20
Vth=E*((R4/(R3+R4))-(R1/(R1+R2)))
Req=(R1*R2/(R1+R2))+(R3*R4/(R3+R4))
Ig=Vth/(Rg+Req)
//for null deflection
R4=R3*R1/R2
printf("unbalanced current in galvanometer\n")
printf("Ig=%.5f A\n",Ig)
printf("resistance for null deflection\n")
printf("R4=%.f ohm",R4)
