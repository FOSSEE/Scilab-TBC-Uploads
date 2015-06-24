//find the crushing stress induced between plates and rivet
clc
//solution
//given
t=16//thickness//mm
P=48*10^3//N
n=2//two plates are given
d=25//mm
//stress acting 
f=(P/(d*t*n))//(N/mm^2)
printf("the stress acting is,%f N/mm^2",f)