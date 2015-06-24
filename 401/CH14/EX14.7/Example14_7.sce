//Example 14.7
//Program to:
//(a) Convert optical signal powers to dBm
//(b) Convert optical signal powers to dBu

clear;
clc ;
close ;

//(a)Convert optical signal powers to dBm
Po=5*10^(-3);      //Watt - GIVEN OPTICAL POWER
dBm=10*log10(Po/1*10^3);
printf("\n\n\t  (a)The %1.0f mW of optical power is equivalent to %0.2f dBm.",Po/10^(-3), dBm);

Po=20*10^(-6);     //Watt - GIVEN OPTICAL POWER
dBm=10*log10(Po/1*10^3);
printf("\n\n\t     The %1.0f uW of optical power is equivalent to %0.2f dBm.",Po/10^(-6), dBm);

//(b)Convert optical signal powers to dBu
Po=0.03*10^(-3);   //Watt - GIVEN OPTICAL POWER
dBm=10*log10(Po/1*10^6);
printf("\n\n\t  (b)The %0.2f mW of optical power is equivalent to %0.2f dBu.",Po/10^(-3), dBm);

Po=800*10^(-9);    //Watt - GIVEN OPTICAL POWER
dBm=10*log10(Po/1*10^6);
printf("\n\n\t     The %1.0f nW of optical power is equivalent to %0.2f dBu.",Po/10^(-9), dBm);
