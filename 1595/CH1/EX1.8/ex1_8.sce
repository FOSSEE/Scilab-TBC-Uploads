//Introductory Topics :example 1-8 : (pg no. 24)
k=1.38*10^-23;
T=(35+40+52);//total temperature
df=(1*10^6);
Teq=52;
To=290;
Pn=(k*T*df);
x=(Teq/To);
NR=(x+1);
NF=(10*log10(NR));
printf("\nPn = k.T.delta(f) = %.17f W",Pn);//Noise power
printf("\nTeq = To(NR-1) \nNR = %.2f",NR);//noise ratio
printf("\nNF = 10log(NR) =%.3f dB",NF);//noise figure