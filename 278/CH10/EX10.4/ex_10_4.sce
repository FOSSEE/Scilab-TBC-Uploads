//find length of the weld
clc
//solution
//given
b=100//mm//width
t=12.5//mm//thickness
P=50*10^3//N
T=56//N/mm^2
//let l and s be length of wled and size of weld
//s=t
s=12.5//mm
//P=1.414*s*l*T
l=P/(1.414*s*T)//mm
printf("the value of length of static weld is,%f mm\n",l+12.5)
T1=T/2.7//N
//P=1.414*s*l*T1
l1=P/(1.414*s*T1)//mm
printf("the value of length of static weld is,%f mm",l1+12.5)