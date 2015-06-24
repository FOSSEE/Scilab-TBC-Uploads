//Frequency Modulation : Transmission : example 5-9 : (pg 222 & 223)
dm=10*10^3;
x=(1/3);//N/S input ratio
phi=asind(x);
phi1=asin(x);
fi=3*10^3;
d=phi1*fi;
a=dm/d;
printf("\nThe worst-case phase shift dur to the noise occurs when phi=asin(N/S)");
mprintf("\nphi = %.1f degrees or %.2f rad",phi,phi1);
printf("\nd= %.f Hz",d);
printf("\nThe S/N output will be %.f",a);
