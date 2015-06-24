clear
clc
//At 338 k
XA=0.581;
t=1;//min
//From ex 9.2 at 65 degree celcius
XAe=0.89;
//For a batch reactor,k1t/XAe=-ln(1-XA/Xae)
k1_338=-(XAe/t)*log(1-(XA/XAe));
//At 25 degree celcius
XAe1=0.993;
T1=338;T2=298;
R=8.314;
//At 298 k
XA1=0.6;
t1=10;//min
k1_298=-(XAe1/t1)*log(1-(XA1/XAe1));
E1=(R*log(k1_338/k1_298))*(T1*T2)/(T1-T2)
ko=k1_338/(exp(-E1/(R*T1)))
//k1=ko*exp(-E1/RT)
//k2=k1/k
printf("\n The rate constants are k=exp[(75300/RT)-24.7] min-1")
printf("\n k1=exp[17.2-(48900/RT)] min-1")
printf("\n k2=exp[41.9-(123800/RT)] min-1 ")