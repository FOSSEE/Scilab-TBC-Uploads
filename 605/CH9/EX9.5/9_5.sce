
Le=3
E=10^(Le/10)-1
L=15
Wc=1
W=1.3*Wc
n=1/2*(log10(10^(L/10)-1)-log10(E))/log10(W/Wc)
m=acosh(sqrt(10^(0.1*L)-1))/acosh(W/Wc)
printf("\nn=%.2f",n)
printf("\nm=%.3f",m)