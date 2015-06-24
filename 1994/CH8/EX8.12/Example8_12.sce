//Chapter-8,Example8_12,pg 58
R1=200
R2=100
R3=1000
R4=2000
Rg=200
R41=2005//changed by delR
Si=12//senstivity
E=10
Vth=E*((R41/(R3+R41))-(R1/(R1+R2)))
Req=(R1*R2/(R1+R2))+(R3*R41/(R3+R41))
Ig=Vth/(Rg+Req)
theta=Si*Ig*10^6//deflection of galvanometer(mm)
printf("deflection of galvanometer\n")
printf("theta=%.4f mm",theta)
