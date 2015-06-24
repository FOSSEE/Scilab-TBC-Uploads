// Amplitude Modulation-Transmission : example 2-8 : pg(82 & 83)
Pc=10*10^3;//carrier power
Pt=11.2*10^3;//transmitted power
m2=0.5;//modulation index of another sine wave
x=2*((Pt/Pc)-1);
m=sqrt(x);
meff=sqrt((m^2)+(m2^2));
a=Pc*(1+((meff^2)/2));
printf("\nPt = Pc.(1+m^2/2) \nm=%.2f",m);
printf("\nmeff = sqrt(m1^2+m2^2) \nmeff = %.1f",meff);//effective modulation index
printf("\nPt = Pc.(1+m^2/2) \n Pt = %.f W",a);//total transmitted power