// Amplitude Modulation-Transmission : example 2-3 : pg(79 & 80)
// m=1 or 100 percent
//each side frequency = 1/2 the carrier amplitude
//power is proportional to (V)^2
//each side band  power = 1/4 carrier power
c=1*10^3;
esb= 1/4*(c);
tsp=(esb*2);
tp=(tsp+c);
printf("\nESF = mEc/2 ");
printf("\nCarrier power = %.f W",c);
printf("\n Each side-band power = 1/4 of carrier power = %.f W",esb);
printf("\nTotal side-band power = %.f W",tsp);
printf("\nTotal transmitted power = %.f W",tp);
