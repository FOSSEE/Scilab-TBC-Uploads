
fl=10*10^6
fu=40*10^6
Wu=2*%pi*40*10^6
Wl=2*%pi*10*10^6
gc=0.9662
gL=0.62425
Wo=2*%pi*20*10^6
fo=sqrt(fl*fu)
printf("\nfo=%.2e Hz",fo)

CBP1=(Wu-Wl)/(Wo^2*gL)
LBP1=gL/(Wu-Wl)
printf("\nCBP1=%.3e F\nLBP1=%.4e H",CBP1,LBP1)

CBP2=(Wu-Wl)/(Wo^2*gc)
LBP2=gc/(Wu-Wl)
printf("\nCBP2=%.3e F\nLBP2=%.4e H",CBP2,LBP2)


printf("\nC1=C3=%.2f pF",19.122*1000/75)

printf("\nL1=L3=%.4f nH",75*3.3116)

printf("\nL2=%.4f uH",75*12.354/1000)

printf("\nC2=%.3f pF",5.1258/75*1000)
