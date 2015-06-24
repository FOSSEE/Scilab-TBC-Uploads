// Example 2.8, page no-76
clear
clc

Beta=100
Vee=15
Vcc=15
Vbe=0.7
Re=65*10^3
Rc=65*10^3
alpha=100/101
Ve=-0.7

Ie=(Vee-Vbe)/(2*Re)
Ic=alpha*Ie
Ib=Ic/Beta

Vc=Vcc-Ic*Rc

Vce=Vc-Ve

Ie=Ie*10^6
printf("Ie= %.1f uA", Ie)

Ic=Ic*10^6
printf("\nIc= %.1f uA", Ic)

Ib=Ib*10^6
printf("\nIb= %.3f uA", Ib)

printf("\nVc= %.3f V",Vc)
printf("\nVce= %.3f V",Vce)

// by approximating, because Vee>>Vbe

Ieapprox=Vee/(2*Re)
Ieapprox=Ieapprox*10^6
printf("\nIe (approx)= %.2f uA",Ieapprox)
