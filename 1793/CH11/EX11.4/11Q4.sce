clc
Gd=14
Gss=18
Gsc=19
Gw=9.81
To= 2*Gd+4*(Gss-Gw)+2*(Gsc-Gw)
LL=40
Cc=0.009*(LL-10)
H=4
T=100
e=0.8
Sc= Cc*H*log10((To+T)/To)/(1+e)
printf('a)Primary Consolidation Sc = %f m\n',Sc)

Tc=190
Cs=Cc/6
Sc= Cs*H*log10((To+T)/To)/(1+e)
printf(' b)Primary Consolidation Sc = %f m\n',Sc)

Tc=170
Sc= Cc*H*log10((To+T)/Tc)/(1+e)+ Cs*H*log10(Tc/To)/(1+e)
printf(' c)Primary Consolidation Sc = %f m\n',Sc)
