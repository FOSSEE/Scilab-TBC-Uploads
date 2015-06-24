
L=30
W=40*10^6
Wc=10*10^6
Le=3
E=10^(Le/10)
Zo=50
Wc=2*%pi*10^6*10
L=Zo/Wc
C=2/(Zo*Wc)
n=1/2*(log10(10^(L/10)-1)-log10(E))/log10(W/Wc)
printf("\nn=%.2f",n)
printf("\ng1=%.0f\ng2=%.0f\ng3=%.0f",2*sin(%pi/6),2*sin(%pi/2),2*sin(%pi*5/6))
printf("\n")
printf("\nL1=L3=%.4e H",L)
printf("\nC2=%.3e F",C)
Zo=50
Wc=2*%pi*10^6*10
L=Zo*2/Wc
C=1/(Zo*Wc)
printf("\nL2=%.4e H",L)
printf("\nC1=C3=%.4e F",C)