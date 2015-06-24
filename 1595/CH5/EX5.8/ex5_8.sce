//Frequency Modulation : Transmission : example 5-8 : (pg 222)
phi=0.5;
fi=5*10^3;
d=phi*fi;
x=75*10^3;
y=x/d;
printf("\nThe i/p =2 means that the worst case deviation is about 1/2 rad");
printf("\nd = %.f Hz",d);
printf("\nbecause full volume in broadcast FM corresponds to 75kHz deviation");
printf("\no/p S/N = %.f",y);
