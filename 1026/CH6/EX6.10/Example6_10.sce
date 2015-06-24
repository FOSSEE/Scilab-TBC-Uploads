//chapter6,Example6_10,pg 124

Rhp=3.66*10^-4

rho=8.93*10^-3

e=1.6*10^-19

p=1/(Rhp*e)

Uhp=Rhp/rho

Bz=0.5

theta=atan(Uhp*Bz)

theta=theta*(180/%pi)

printf("density of charge carrier\n")

disp(p)

printf("\nhall angle\n")

printf("theta=%.2f deg.",theta)

printf("\nhall mobility\n")

printf("Uhp=%.4f m2/VS",Uhp)