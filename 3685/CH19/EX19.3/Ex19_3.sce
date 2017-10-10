clc
P1 = 101.3e03 
P4 = P1 // in Pa
P2 = 8*P1  
P3 = P2
T1 = 288 
Vs = 2000
V3 = 100 
Vc = V3
V1 = Vs + Vc 
n = 1.25 
R = 287
V4 = ((P3/P4)^(1/n))*V3
W = ((n*P1*(V1-V4)*1e-06)/(n-1))*(((P2/P1)^((n-1)/n))-1)
P = (W*800*0.001)/60  

m = (P1*(V1-V4)*1e-06)/(R*T1)
m_dot = m*800

FAD = (V1-V4)*1e-06*800

Wt = P1*(V1-V4)*1e-06*log(P2/P1)
n_isothermal = (Wt*800*0.001)/(P*60)

Pi = P/0.85
n_v =100*(V1-V4)/Vs
printf("\n Example 19.3\n")
printf("\n Indicated poer is %f kW",P)
printf("\n Volumetric efficiency is %f percent",n_v)
printf("\n Mass flow rate is %f kg/min",m_dot)
printf("\n Free air delivery is %f m^3/min",FAD)
printf("\n Isothermal efficiency is %f percent",100*n_isothermal)
printf("\n Input power is %f kW",Pi)

//The answers vary due to round off error

