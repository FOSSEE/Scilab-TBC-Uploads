clc
w3 = 2.3 // net flow rate in kg/s 
w1 = 1.0 // flow rate from stream 1 in m/s
h1 = 2950.0 // Enthalpy of stream 1
p = 0.8 // Pressure in MPa
// At 0.8MPa, 0.95 dry
x = 0.95 // Quality fraction
hf = 721.11 // Enthalpy of fluid in kJ/kg
hfg = 2048 // Latent heat of vaporization in kJ/kg
s3 = 6.7087  // entropy at turbine inlet in kJ/kgK


printf("\n Example 9.8")
w2 = w3-w1 // flow rate from second stream
h2 = hf + (x*hfg) // enthalpy of stream 2
h3 = ((w1*h1)+(w2*h2))/w3 // enthalpy of mixed stream
// Interpolation
H = [2769.1 2839.3]
T = [170.43 200]
t3 = interpln([H;T],2790)

s4 = s3
x4 = (s3-1.7766)/5.1193
h4 = 604.74+(x4*2133.8)
V4 = sqrt(2000*(h3-h4))
printf("\n Condition of steam after mixing is - \n pressure = %f MPa, temperature = %f degree centigrade",p,t3)

printf("\n The velocity of steam leaving the nozzle is %f m/sec",V4)
//The answers vary due to round off error

