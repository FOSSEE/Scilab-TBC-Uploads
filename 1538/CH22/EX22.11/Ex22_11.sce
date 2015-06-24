//example-22.11
//page no-674
//given
//depth of penetration at 3K is 39.8 nm and at 7.1 K is 1730 A
T1=3  //K
T2=7.1  //K
dp1=39.6*10^-9  //m
dp2=1730*10^-10  //m
//as we know that depth of penetration and temp are related as
//(dp(T)/dp(T0))=1/(1-t^4/Tc^4)
//so we get
//at 3K
//let dp(T0)=dp0
//dp0=sqrt(dp1^2*(1-T1^4/Tc^4))  -(1)
//also
//dp0=sqrt(dp2^2*(1-T2^4/Tc^4))  .----(2)
//solving 1 and 2 we get
//((Tc^4-81)/(Tc^4-(7.1)^4))=(173)^2/(39.6)^2
//so we get
Tc=(48417.9/18.085)^(1/4)  //K\
//depth of penetration at absolute zero willbe
dp0=sqrt(dp1^2*(1-T1^4/Tc^4))*10^9  //nm
printf ("critica temp is %f K\n and depth of penetration at critica zero is %f nm",Tc,dp0)
