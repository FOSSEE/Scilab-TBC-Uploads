//chapter6,Example6_8,pg 123

L=10^-3

R=1.5

A=10^-6

Ey=0.6

w=10^-3

d=10^-3

I=120*10^-3

Bz=0.05

e=1.6*10^-19

sigp=L/(R*A)

Vhp=Ey*w

Rhp=(Vhp*d)/(I*Bz)

Uhp=sigp*Rhp

theta=atan(Uhp*Bz)

theta=theta*(180/%pi)

p=1/(Rhp*e)

printf("hall voltage :Vhp=%.4f Volt\n",Vhp)

printf("\nhall coeff. :Rhp=%.5f m3/e\n",Rhp)

printf("\nhall mobility :Uhp=%.4f m2/VS\n",Uhp)

printf("\nhall angle :theta=%.2f deg.\n",theta)

printf("\ndensity of charge carrier\n")

disp(p)