clc
//initialisation of variables
m1=90//gm
m2=10//gm
T1=373//k
T2=273//k
T3=331.2//k
l=540
//CALCULATIONS
ds=(m1+m2)*log(T3/T2)-m2*l/T1+m2*log(T3/T1)
//results
printf(' change in entropy = % 1f cal/k',ds)
