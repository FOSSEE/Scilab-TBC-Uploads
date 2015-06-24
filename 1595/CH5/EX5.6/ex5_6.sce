//Frequency Modulation : Transmission : example 5-6 : (pg 218)
d=75*10^3;
fi=30*10^3;
fi1=15*10^3;
d1=1*10^3;
fi2=100;
fi3=2*10^3;
a=d/fi;
b=d/fi1;
c=d1/fi2;
d=d1/fi3;
DR=d1/fi3;
//part(a)
printf("\nThe maximum deviation in broadcast FM is 75 kHz");
printf("\nmf = %.f",a);//for fi=30kHz
printf("\nFor fi = 15kHz, \nmf1 = %.f",b);
//part(b)
printf("\nmf2 = %.f",c);//for fi=100Hz and d=1kHz
printf("\nfor fi=2kHz \nmf3 = %.f",d);
printf("\nDR = fdev(max)/fi(max) = %.1f",DR);//deviation ratio