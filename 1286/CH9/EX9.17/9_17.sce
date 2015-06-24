clc
//initialisation of variables
m1=1//gm
m2=28
cv=0.18
T2=373//k
T1=323//k
//CALCULATIONS
ds=m1*cv*log(T2/T1)/m2
//results
printf(' change in entropy = % 1f cal/k',ds)
