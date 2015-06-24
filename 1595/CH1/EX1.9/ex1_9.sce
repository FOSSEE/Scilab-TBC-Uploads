//Introductory Topics :example 1-9 : (pg no. 25)
x=7*10^-3;
y=0.18*10^-3;
z=10*log10(x/y);
// o/p power measured 400-Hz audio signal modulates a carrier
printf("\nS+N+D = %.3f W",x);
// o/p power measured when a filter cancels 400-Hz portion of the o/p
printf("\nN+D = %.5f W",y);
printf("\nSINAD = 10log(S+N+D/N+D)");
printf("\nSINAD = %.1f dB",z);