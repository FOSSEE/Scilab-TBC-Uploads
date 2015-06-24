//Introductory Topics :example 1-1 : (pg no. 8)
P1=0.001;
dB=10*log(0.001/0.001);
x=10^0;
y=x*P1*600;
V=sqrt(y);
printf("\ndB =10log(P1/P2) = 10log(1mW/1mW) = %.f dBm",dB);
//0 dBm indicates result was obtained to a 1-mW reference
// voltage measured across 600 ohm load for 0dBm level is 0.775 V
printf("\ndB =10log(P1/P2) \nwhere P2=V2^2/600 \nP1=0.001 W");
printf("\n0 dBm = 10log((V2^2)/600))/0.001");
printf("\nV2 =%.5f V",V);
//value of V2 is used to calculate the dBm(600) value
printf("\ndBm(600)=20log(V2/0.775)");


