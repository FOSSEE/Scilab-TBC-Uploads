//chapter10,Example10_7,pg 273

n=1.2*10^7

mp=1.67*10^-27

qp=1.6*10^-19

Bp=(2*%pi*mp*n)/qp

R=0.5

Ep=((Bp^2)*(qp^2)*(R^2))/(2*mp)

Ep=Ep/qp

malp=6.68*10^-27

qalp=2*1.6*10^-19

Balp=(2*%pi*malp*n)/qalp

Ealp=((Balp^2)*(qalp^2)*(R^2))/(2*malp)

Ealp=Ealp/qp

printf("flux density for proton\n")

printf("Bp=%.2f Wb/m2",Bp)

printf("\nflux density for alpha particle\n")

printf("Balp=%.2f Wb/m2",Balp)

printf("\nenergy of proton\n")

printf("Ep=%.2f ev",Ep)

printf("\nenergy of alpha particle\n") 

printf("Ealp=%.2f ev",Ealp)