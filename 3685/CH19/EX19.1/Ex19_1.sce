
clc
T2 = 488 
T1 = 298 
n = 1.3 
R =8314/44
rp = (T2/T1)^(n/(n-1))

b = 0.12 // Bore of compressor
L = 0.15 // Stroke of compressor
V1 = (%pi/4)*(b)^2*L  
P1 = 120e03 // in kPa
W = ((n*P1*V1)/(n-1))*(((rp)^((n-1)/n))-1)
P = (W*1200*0.001)/60  

V1_dot = V1*(1200/60)
m_dot = (P1*V1_dot)/(R*T1)

rp_1 = rp^2
V2 = (1/rp)^(1/n)*V1
d = sqrt((V2*4)/(L*%pi))
printf("\n Example 19.1\n")
printf("\n Pressure ratio is %f ",rp)
printf("\n Indicated power is %f kW",P)
printf("\n Shaft power is %f kW",P/0.8)
printf("\n Mass flow rate is %f kg/s",m_dot)
printf("\n Pressure ratio when second stage is added is %f",rp_1)
printf("\n Volume derived per cycle is V2 %f m^3",V2)
printf("\n Second stage bore would be %f mm",d*1000)
//The answers vary due to round off error
