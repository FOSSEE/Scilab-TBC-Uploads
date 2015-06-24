//Communication Techniqu;es : example 7-6 : (pg 304)
Q=60;
IF=455*10^3;
x=680*10^3;
imf=x+2*(IF);//image frequency
a=(imf/x);
b=(x/imf);
c=(Q*(a-b));
d=20*log10(c);
printf("\nimage rejection(dB)=20log((fi/fs-fs/fi).Q)");
printf("\nThe image frequency is %.f Hz",imf);
printf("\nimage rejection = %.f dB",d);
