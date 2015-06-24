clc
//Initialization of variables
dhab=-122.6
ha=348.5
eta=0.85
hf=471.6
hfg=731.6
hc=1203.2
dhcd=384.4
hf2=28.06
hfg2=1059.9
//calculations
hbd= ha - dhab/eta
x=(hbd-hf)/hfg
sbd=0.6944
hdd=hc- dhcd/eta
xdd=(hdd-hf2)/hfg2
sdd=1.5768
Qa=hc-hbd
etat=(dhcd+dhab/eta)/Qa
W=dhcd+dhab/eta
rw= W/dhcd
//results
printf("theoretical efficiency = %.1f percent",etat*100)
printf("\n Work ratio = %.3f",rw)
