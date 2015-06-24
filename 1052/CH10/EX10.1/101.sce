clc;
//Example 10.1
//page no 98 
printf("Example 10.1  pagr no. 98\n\n");
// in a column of liquid
h=2.493//height of the liquid (mercury) column
rho=848.7//density of mercury
P_at=2116//atmospheric pressure 
printf("\n height of mercury h=%f ft\n density of mercury rho=%f lb/ft^3\n atmospheric pressure P_at=%f psf ",h,rho,P_at);
//refer to equation 10.5
g=9.8
g_c=9.8
P=rho*(g/g_c)*h//gauge pressure 
P_ab=round(P+P_at)//absolute pressure
printf("gauge pressure P=%f psf\n absolute pressure P_ab=%f psf",P,P_ab);
