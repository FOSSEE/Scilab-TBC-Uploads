
fl=10*10^6
fu=40*10^6
Wu=2*%pi*40*10^6
Wl=2*%pi*10*10^6
gc=2
gL=1
Wo=2*%pi*20*10^6
fo=sqrt(fl*fu)
printf("\nfo=%.2e Hz",fo)

CBP1=(Wu-Wl)/(Wo^2*gL)
LBP1=gL/(Wu-Wl)
printf("\nCBS1=%.3e F\nLBS1=%.4e H",CBP1,LBP1)
LBP2=1/gc/(Wu-Wl)
CBP2=(Wu-Wl)*gc/(Wo^2)

printf("\nCBP2=%.3e F\nLBP2=%.4e H",LBP2,CBP2)


printf("\nC1=C3=%.2f pF",5.305/75*1000)

printf("\nL1=L3=%.4f nH",75*11.94)

printf("\nL2=%.4f uH",75*2.653/1000)

printf("\nC2=%.3f pF",23.87/75*1000)
