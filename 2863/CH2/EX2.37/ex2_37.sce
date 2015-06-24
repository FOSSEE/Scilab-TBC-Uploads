//chapter 2
//part a
printf("\n");
c=3*10^8;
f=100*10^6;
lamda=c/f;
printf("the wavelength is %dm",lamda);
//part b
Gt=15.8489//antilog(12/10)
Pt=10^-1;
Pr=10^-9;
d=384.4*10^6;//238857*1609.35
Gr=(((4*(%pi)*d)/lamda)^2*Pr)/(Pt*Gt);
printf("\nthe gain of receiver is %g",Gr);
Grdb=10*log10(Gr);
printf("\nthe gain of receiver in db is %gdb",Grdb);
