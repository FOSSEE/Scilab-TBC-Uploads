//Frequency Modulation : Transmission : example 5-3 : (pg 214)
d=20*10^3;
fi=10*10^3;
mf=d/fi;
a=mf*40;
printf("\nmf = %.f",mf);//maximum deviation
printf("\nJ0,J1,J2,J3,J4 are the significant components are obtained");//from Bessel func
printf("\nJ1=+-10kHz \nJ2=+-20kHz \nJ3 = +-30kHz \nJ4=+-40kHz");
printf("\ntotal required bandwidth is %.f kHz",a);
