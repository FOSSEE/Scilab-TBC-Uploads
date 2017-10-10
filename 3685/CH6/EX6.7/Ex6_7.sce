clc
T1 = 1000 // Temperature of hot reservoir in K
W = 1000 // Power requirement in kW
K = 5.67e-08 // constant 
printf("\n Example 6.7")
Amin = (256*W)/(27*K*T1^4) // minimum area required
printf("\n Area of the panel %f m^2",Amin)


