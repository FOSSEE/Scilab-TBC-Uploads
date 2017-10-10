clc
// Given that
p1 = 1 // Intake pressure of compressor in bar
T1 = 298 // Intake temperature in K
p_d = 36 // Delivery pressure in bar
T2 = 390 // Maximum temperature in any stage in K
n = 1.3 // Polytropic index
R = 0.287
printf("\n Example 19.11\n")
r = (T2/T1)^(n/(n-1))
N = ceil(r)
p2 = (p_d/p1)^(1/N)
p3 = (p_d/p1)^(2/N)
p4 = (p_d/p1)^(3/N)
Wc = (N*n*R*T1/(n-1))*((p_d/p1)^((n-1)/(N*n))-1)
Wc_ = (n/(n-1))*(1*R*T1)*((p_d/p1)^((n-1)/n)- 1)
T = T1*((p2/p1)^((n-1)/n))
printf("\n No of stages for min power input = %d,\n Power required = %f kW/kg air,\n The power required for a single stage compressor = %f kW,\n Maximum temperature in any stage = %f K",N,Wc,Wc_,T)
//The answers given in the book contain round off error

 
