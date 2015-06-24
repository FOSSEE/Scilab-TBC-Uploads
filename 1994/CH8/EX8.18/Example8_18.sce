//Chapter-8,Example8_18,pg 8_62
R1=1000
R2=100
R3=4*10^3
R4=40*10^3
Rth=(R1*R2/(R1+R2))+(R3*R4/(R3+R4))
Si=70
theta=3*10^-6//deflection
E=10
Rg=80
delR=(theta*(Rth+Rg)*((R3+R4)^2))/(Si*E*R3)
printf("change in resistance\n")
printf("delR=%.4f ohm",delR)
