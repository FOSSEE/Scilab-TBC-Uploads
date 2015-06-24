//Communication Techniqu;es : example 7-7 : (pg 314)
NF=20;
df=10^6;
x=10*log10(df);
S=-174+NF+x;
a=5;//input intercept
dr=2/3*(a-S);
printf("\nS = -174dBm + NF + 10log10df + S/N = %.f dB",S);//sensitivity
printf("\ndynamic range = 2/3.(input intercept-noise floor) = %.d dB",dr);