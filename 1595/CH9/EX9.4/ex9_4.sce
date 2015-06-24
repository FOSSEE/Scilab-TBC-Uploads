//Wired Digital Communications : example 9-4 : (pg 410)
bw=3*10^3;//bandwidth
x=1023;//signal-to-noise ratio
C=bw*log2(1+x);//capacity of telephone channel
printf("\nthe telephone channel has a bandwidth of about %.f Hz",bw);
printf("\nC = BW.log2(1+S/N) = %.f bits per second",C);
