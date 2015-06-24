//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 3.1
//determination of power law dependence between the gap spacing  and the applied voltage of the oil

//given data
d1=4//gap spacing(in mm)
d2=6//gap spacing(in mm)
d3=10//gap spacing(in mm)
d4=12//gap spacing(in mm)
V1=90//voltage(in kV) at breakdown
V2=140//voltage(in kV) at breakdown
V3=210//voltage(in kV) at breakdown
V4=255//voltage(in kV) at breakdown

//calculation
//from the relationship between breakdown voltage and the gap spacing.....V = K*d^n
//we get n = (log(V)-log(K))/log(d) = slope of line from given data
n=(log(V4)-log(V1))/(log(d4)-log(d1))
K=exp(log(V1)-n*log(d1))//Y intercept on the power law dependence graph
//plotting of graph
dn=[1:20]
Vn=K*dn^n
plot(dn,Vn)
xlabel("Gas spacing (mm)")
ylabel("Breakdown voltage (kV)")

printf('The power law dependence between the gap spacing  and the applied voltage of the oil is %3.2f*d^%3.3f',K,n)
