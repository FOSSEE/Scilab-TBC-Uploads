// Amplitude Modulation-Reception : example 3-3 : (pg 150 & 151)
V=8*10^-6;
R=50;
P=(V^2)/R;
dBm=10*log10(P/0.001);
dBW=10*log10(P/1);
a=(-89+8+3+24+26+26-2+34);
x=(a/10);
y=10^x;
z=y*0.001;
printf("\nP = V^2/R = %.15f W",P);//input power in Watts
printf("\ndBm = 10log(P/1mW) = %.f dBm",dBm);//input power in dBm
printf("\ndBW = 10log(P/1W) = %.f dBW",dBW);//input power in dBW
printf("\nPout(dBm) = %.f dBm into speaker",a);//o/p power in dBm
printf("\nPout(dBW) = %.f W",z);


