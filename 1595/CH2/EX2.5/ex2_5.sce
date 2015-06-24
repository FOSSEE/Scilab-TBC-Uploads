// Amplitude Modulation-Transmission : example 2-5 : pg(81)
m=0.95;//modulation index
Pt= 50*10^3;//total transmitted power
x=(m^2)/2;
y=1+x;
z=(Pt/y);
Pi=Pt-z;
printf("\nPt = Pc*(1+(m^2)/2)");
printf("\nPc = %.f W",z);//carrier power
printf("\nPi = Pt-Pc = %.f W",Pi);//intelligence signal
