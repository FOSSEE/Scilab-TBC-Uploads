//Ex9.3.5.1.;Calculate Energy generated
R=12;//unit=m; R is the range
r=3;//unit=m; the head below turbine stops operating
time=(44700/2);
A=30*10^6;
g=9.80;
p=1025;
//The total theoretical work W=integrate('1','w',R,r);
W=(g*p*A*((R^2)-(r^2)))/2;
printf(" W=%f ",W);
//The average power generated
Pav=W/time;//unit=watts
printf("\n The average power generated=%f watts",Pav);
pav=(Pav/1000)*3600;//unit=kWh
printf("\n The average power generated=%f kWh",pav)
//the energy generated
Energy_generated=pav*0.73
printf("\n Energy generated=%f kWh",Energy_generated);
