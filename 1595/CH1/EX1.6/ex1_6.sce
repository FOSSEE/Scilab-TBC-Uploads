//Introductory Topics :example 1-6 : (pg no. 18 & 19)
x=10;
y=5;
z=(x/y);
a=(10*log10(z));
b=(10*log10(x));
c=(10*log10(y));
d=(b-c);
//part(a)
printf("\nNR = ((Si/Ni)/(So/No)) = %.f",z);
//part(b)
printf("\nNF = 10log((Si/Ni)/(So/No)) =  10logNR \nNF = %.f dB",a);
//part(c)
printf("\n 10log(Si/Ni) = %.f dB",b);
printf("\n 10log(So/No) = %.f dB",c);
printf("\ntheir difference = %.f dB",d);
