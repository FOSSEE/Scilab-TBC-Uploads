
clear;
clc;
//Example 2.30
//Given
hi=75        //[W/sq m.K)
x1=0.2    //m
x2=0.1    //[m]
x3=0.1    //[m]
T1=1943    //[K]
k1=1.25    //W/m.K
k2=0.074    ///W/m.K
k3=0.555    //W/m.K
T2=343    //K
A=1    //assume [sq m]
sigma_R=1/(hi*A)+x1/(k1*A)+x2/(k2*A)+x3/(k3*A);
//Heat loss per i sq m
Q=(T1-T2)/sigma_R    //[W]
//if T=temperature between chrome brick and koalin brick then 
//Q=(T1-T)/(1/(hi*A)+x1/(k1*A))
//or T=T1-(Q*(1/(hi*A)+x1/(k1*A)))
T=T1-(Q*(1/(hi*A)+x1/(k1*A)));    //[K]
printf("Temperature at inner surface of middle layer=%f K(%f degree C)",T,T-273);
//if Tdash=temperature at the outer surface of middel layer,then
//Q=(Tdash-T2)/(x3/(k1*A))
//or Tdash=T2+(Q*x3/(k3*A))
Tdash=T2+(Q*x3/(k3*A))    //[K]
printf("Temperature at outer surface of middle layer=%f K (%f degree C)",Tdash,Tdash-273);


