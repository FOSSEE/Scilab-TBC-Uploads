//Chapter-8,Example8_13,pg 59
R1=1000
R2=1000
R3=119
R4=121
Rg=200
S1=1
E=5
Vth=E*((R4/(R3+R4))-(R1/(R1+R2)))
Req=(R1*R2/(R1+R2))+(R3*R4/(R3+R4))
Ig=Vth/(Rg+Req)
theta=S1*Ig*10^6//deflection of galvanometer(mm)
printf("deflection of galvanometer\n")
printf("theta=%.4f mm",theta)
