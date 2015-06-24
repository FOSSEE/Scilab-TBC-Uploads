clear
clc
C_Mg=0.5;//concentration of Mg2+ ion
C_SO4=0.7;//concentration of SO4_2- ion
C_Al=0.1;//concentration of Al3+ ion
C_Cl=0.3;//cocncentration of Cl- ion
C_NH4=0.4;//concentration of NH4+ ion
Z1=2;//valence of Mg2+ ion
Z2=2;//valence of SO4_2- ion
Z3=3;//valence of Al3+ ion
Z4=1;//valence of Cl- ion
Z5=1;//valence of NH4+ ion
mu=1/2*(C_Mg*(Z1^2)+C_SO4*(Z2^2)+C_Al*(Z3^2)+C_Cl*(Z4^2)+C_NH4*(Z5^2));//ionic strength
printf('mu=%.1f',mu)

//page 78
