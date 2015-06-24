clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.5
// Page 34
printf("Example 2.5, Page 34 \n\n")

Ti = 90;                            //Temp on inner side in degree celsius
To = 30;                            //Temp on outer side in degree celsius
hi = 500;                           //heat transfer coeffcient in W/m^2 K
ho = 10;                            //heat transfer coeffcient in W/m^2 K
ID = 0.016;                         //Internal diameter in meters
t = [0 0.5 1 2 3 4 5];             //Insulation thickness in cm
OD = 0.02;                        //Outer diameter in meters
r3 = OD/2 + t/100;                //radius after insulation in meters

i=1;
printf("\n Insulation thickness(cm)       r3(m)    heat loss rate per meter(W/m)");
while i<=7
    ql(i) = [2*(%pi)*(ID/2)*(Ti-To)]/[(1/hi)+(0.008/0.2)*log(r3(i)/0.01) + (0.008/r3(i))*(1/ho)];
printf("\n     %.1f                         %.3f             %.1f",t(i),r3(i),ql(i));
    i = i+1;
end
plot(t,ql);
xtitle("","Insulation thickness(cm)","Heat loss rate per unit length,W/m");
printf("\n The maxima in the curve is at r_3 = 0.02 m");
