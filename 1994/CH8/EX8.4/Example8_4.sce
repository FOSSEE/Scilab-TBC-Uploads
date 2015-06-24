//Chapter-8,Example8_4,pg 8_25
R3=100.03*10^-6
R2=100.24
R1=200
b=100.31
a=200
Ry=700*10^-6
Rx=R1*R3/R2
Rx=Rx+(b*Ry/(Ry+a+b))*((R1/R2)-(a/b))
printf("unknown resistance\n")
printf("Rx=%.7f ohm",Rx)
