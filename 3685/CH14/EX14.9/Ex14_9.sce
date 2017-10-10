clc
T1 = 4 // Compressor inlet temperature in degree Celsius
T3 = 55 // Cooling limit in heat exchanger in degree Celsius
rp = 3 // Pressure ratio
g = 1.4 // Heat capacity ratio
cp = 1.005 // Constant volume heat capacity
L = 3 // Cooling load in tonnes of refrigeration
nc = 0.72 // compressor efficiency
T2s = (T1+273)*(rp^((g-1)/g)) // Ideal temperature after compression
T2 = (T1+273)+(T2s-T1-273)/nc // Actual temperature after compression
T4s = (T3+273)/(rp^((g-1)/g)) // Ideal temperature after expansion
T34 = 0.78*(T3+273-T4s) // Change in temperature during expansion process
T4 = T3+273-T34 // Actual temperature after expansion
COP = (T1+273-T4)/((T2-T1-273)-(T3+273-T4)) // Coefficient of performance of cycle
P = (L*14000)/(COP*3600) // Driving power required
m = (L*14000)/(cp*(T1+273-T4)) // Mass flow rate of air
printf("\n Example 14.9\n")
printf("\n COP of the refrigerator is %f",COP)
printf("\n Driving power required is %f kW",P)
printf("\n Mass flow rate is %f kg/s",m/3600)
//The answers vary due to round off error

