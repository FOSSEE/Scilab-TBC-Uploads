clc
//initialisations
ht=65//cm
h0=-5//cm
t=273//c
//CALCULATIONAS
h100=h0+(100*(ht-h0)/t)
l=(1+(t/273))
H=(ht-(h0*l))/(l-1)
printf(' temperature= % 1f cm',H)
