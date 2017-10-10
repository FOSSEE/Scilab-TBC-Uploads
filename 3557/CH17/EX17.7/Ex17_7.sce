//Example 17.7//

s=60;//ohm^-1 m^-1 //extrinsic conductivity
q=0.16*10^-18;//C //1 coulomb of charge
ue=0.364;//m^2/(V.s) //electron mobility
n=s/(q*ue)
mprintf("n = %e m^-3",n)
a=1.03*10^21;//atomsP/m^3
b=30.97;//g P
c=0.6023*10^24;//atoms P //Avaogardo's Number
d=1;//cm^3 Ge //given
e=5.32//g Ge // Density of Germanium
f=1;//m^3 //given
g=10^6;//cm^3 //given
p=a*(b/c)*(d/e)*(f/g)
mprintf("\np = %e g P/g Ge",p)
j=10^9;//as 10^9= 1 billion
i=p*j
mprintf("\ni = %f ppb P",i)
mprintf("   ( As 10^9 = 1 billion)")
