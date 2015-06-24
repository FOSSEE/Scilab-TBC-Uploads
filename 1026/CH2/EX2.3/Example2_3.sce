//chapter-2,Example2_3,pg 54

//P=(dE/dt)Fe=a+b*t=1734-4.87*t

//P=(dE/dt)Cu=a+b*t=136+0.95*t

aFe_Pb=1734*10^-6

aFe_Cu=(1734-136)*10^-6

aCu_Pb=136*10^-6

bFe_Pb=-4.87*10^-6

bFe_Cu=(-4.87-0.95)*10^-6

bCu_Pb=0.95*10^-6

a=aFe_Cu

b=bFe_Cu

t=100

EFe_Cu=(a*t)+0.5*(b*(t^2))

printf("e.m.f of termocouple\n")

printf("EFe_Cu=%.4f Volt",EFe_Cu)