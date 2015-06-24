
clear;
clc;
printf("\t Example 2.3\n");

pa1=(33/760)*1.013*10^5;              //vapour pressure of ccl4 at 273 in pascal
pa2=0;
d=1.59;                              //density of liquid ccl4 in g/cm^3
    //considering o2 to be non diffusing and with 
T=273;                             //temperature in kelvin
pt=(755/780)*1.013*10^5;          //total pressure in pascal
z=.171;                          //thickness of film
a=.82*10^-4;                    //cross-sectional area of cell in m^2
v=.0208;                       //volume of ccl4 evaporated 
t=10;                         //time of evaporation
MB=154;                      //molecular wght of ccl4
rate=v*d/(MB*t);            //.0208cc of ccl4 is evaporating in 10hrs 
Na=rate*10^-3/(3600*a);    //flux in kmol/m^2*S

D_ab=Na*z*8314*273/(pt*log((pt-pa2)/(pt-pa1)));    //molecular diffusivity in m^2/s
printf("\n the  diffusivity of ccl4 through oxygen:%f *10^-6 m^2/s",D_ab/10^-6);
//end