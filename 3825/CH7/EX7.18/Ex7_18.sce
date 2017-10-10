clc
T1=350
Te1=450
Te2=250
P1=250
P2=100
R=8.314
Cp=(7*R)/2
me1=(Cp*log(Te1/T1))-(R*log(P2/P1))
me2=(Cp*log(Te2/T1))-(R*log(P2/P1))
mprintf("me1(se1-si)+me2(se2-si)=%fkJ/K",me1+me2)//ans vary due to roundoff error
