//chapter-2,Example2_2,pg 54

aFe=16.65

aAg=2.86

bFe=-0.095

bAg=0.017

aFe_Ag=aFe-aAg

bFe_Ag=bFe-bAg

a=aFe_Ag

b=bFe_Ag

Tn=-(a/b)

t=100

EFe_Ag=(a*t)+0.5*(b*(t^2))

printf("neutral temp. of Fe-Ag thermocouple\n")

printf("Tn=%.3f deg. C",Tn)

printf("\nthermo e.m.f of thermocouple\n")

printf("EFe_Ag=%.f volts",EFe_Ag)