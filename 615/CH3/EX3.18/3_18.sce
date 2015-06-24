//chemical kinetics and catalysis//
//example 3.18//
k=4.5*10^3;//value of k in /sec of a first order reaction at 1C//
E=58*10^3;//activation energy in J/mol//
T=1;//temperature in C//
T1=T+273;//in kelvin//
R=8.314;//value of constant R in J/K.mol//
lA=log10(k)+(E/(2.303*R*T1));
k1=10^4;//value of k in /sec at some temperature//
a=log10(k1);
b=lA-a;
T2=E/(2.303*R*b);
printf("The temperature at which k=1*10^4/sec is %fK",T2);