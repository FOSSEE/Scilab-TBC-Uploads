clc
LL=40
Cc=0.009*(LL-10)
H=10*12
eo=1.0
Gss=120
Gsc=110
Gd=100
To=10*Gd +10*(Gss-62.4)+10*(Gsc-62.4)/2

Tt=0.408
Tm=0.232
Tb=0.019
Tav= (Tt+4*Tm+Tb)/6
Sc=Cc*H*log10((To+Tav*1000)/To)/(1+eo)
printf('Sc = %f in',Sc)
