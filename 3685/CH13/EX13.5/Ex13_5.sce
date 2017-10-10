clc
P1 = 0.1 // Air pressure at turbine inlet in MPa
T1 = 30 // Air temperature at turbine inlet in degree Celsius
T3 = 900 // Maximum cycle temperature at turbine inlet in degree Celsius
rp = 6 // Pressure ratio
nt = 0.8 // Turbine efficiency
nc = 0.8// Compressor efficiency
g = 1.4 // Heat capacity ratio
cv = 0.718 // Constant volume heat capacity
cp = 1.005 // Constant pressure heat capacity
R = 0.287 // Gas constant
T2s = (T1+273)*(rp)^((g-1)/g)
T4s = (T3+273)/((rp)^((g-1)/g))
T21 = (T2s-T1-273)/nc  // Temperature raise due to compression
T34 = nt*(T3+273-T4s) // Temperature drop due to expansion
Wt = cp*T34 // Turbine work
Wc = cp*T21 // Compressor work
T2 = T21+T1+273 // Temperature after compression
Q1 = cp*(T3+273-T2) // Heat added
n = (Wt-Wc)/Q1 // First law efficiency
T4 = T3+273-T34 // Temperature after expansion
T6 = 0.75*(T4-T2) + T2 // Regeneration temperature 
Q1_ = cp*(T3+273-T6)// Heat added
n_ = (Wt-Wc)/Q1_ //cycle efficiency
I = (n_-n)/n // Fractional increase in cycle efficiency
printf("\n Example 13.5\n")
printf("\n The percentage increase in cycle efficiency \n due to regeneration is %f percent",I*100)
//The answers vary due to round off error

