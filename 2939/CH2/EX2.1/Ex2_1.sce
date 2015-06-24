
//Ex2_1

clc;

//Given:
f=19;// atomic mass no. of F
a=197;// atomic mass no.of Au
p=239;// atomic mass no. of Pu
//solution:(a)

m1=f/(6.02*10^23);
Rf=1.4*(f^(1/3))*10^-13;// in cm
V1=1.3333*3.14*(Rf)^3;
df=m1/(V1*10^14);// density in 10^14 g cm^-3
printf("\n The density nucleus of F(19) in 10^14 g cm^-3 is = %f ",df)

//(b)
m2=a/(6.02*10^23);
Ra=1.4*(a^(1/3))*10^-13;// in cm
V2=1.3333*3.14*(Ra)^3;
da=m2/(V2*10^14);// density in 10^14 g cm^-3
printf("\n The density nucleus of Au(197) in 10^14 g cm^-3 is = %f ",da)


//(c)
m3=p/(6.02*10^23);
Rp=1.4*(p^(1/3))*10^-13;// in cm
V3=1.3333*3.14*(Rp)^3;
dp=m3/(V3*10^14);// density in 10^14 g cm^-3
printf("\n The density nucleus of P(239) in 10^14 g cm^-3 is = %f ",dp)

// Note: The density for Au(197) is not calculated correctly in the textbook.

