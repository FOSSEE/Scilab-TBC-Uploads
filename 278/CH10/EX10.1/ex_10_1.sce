//find the length of weld
clc
//soltion
//given
b=100//mm//width
t=10//mm//thickness
P=80*10^3//N
T=55//N/mm^2
//let l and s be length of wled and size of weld
//s=t
s=10//mm
//P=1.414*s*l*T
l=P/(1.414*s*T)//mm
printf("the length of weld is,%f mm",l+12.5)