//chapter6,Example6_12,pg 124

//permeability of electron to be in C.B=F(Ec)

e=1.6*10^-19

Eg=5.6

Ef=Eg/2

Ec=Eg

K=1.38*10^-23

T=27+273//converting in Kelvin

KT=K*T

KT=KT/e

//e^(Ec-Ef/KT)>>1

Fermi_F=e^((Ef-Ec)/KT)//fermi factor

printf("probability of electron on CB\n")

disp(Fermi_F)

printf("\nit is infinite in negative direction for an insulator like diamond, so diamond cannot take part in conduction")