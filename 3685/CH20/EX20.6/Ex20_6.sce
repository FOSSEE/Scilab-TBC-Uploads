clc
// Given that
no = 6 // No of cylinders
Vs = 1.75 // Stroke volume in litres
P = 26.25 // Power developed in kW
N = 506 // Speed in rpm
mep = 600 // Mean effectine pressure in kN/m^2
printf("\n Example 20.6\n")
n = P*60000/(no*mep*1000*Vs*(10^-3))
n_e = N/2
n_m = n_e - n
printf("\nAvg no of misfire = %d",n_m)



