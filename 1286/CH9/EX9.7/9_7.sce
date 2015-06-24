clc
//initialisation of variables
m=1//kg
c=1000
T1=273//k
T2=50+273//k
l=571700//cal/kg
//CALCULATIONS
ds=m*c*log(T2/T1)+m*l/T2
//results
printf(' difference in entropy = % 1f cal per degree c',ds)
