clc
// Given that
V = 0.12 // Volume of tank in m^3
p = 1 // Pressure in MPa
T = 150 // Temperature in degree centigrade
P = 0.1 // Power to peddle wheel in kW
printf("\n Example 5.8")
u0 = 0.718*273 // Internal energy at 0 degree Celsius
// Function for internal energy of gas
t=poly(0,"t")
u = u0+(0.718*t)
pv = 0.287*(273+t)
U=horner(u,T)
PV = horner(pv,T)
hp = U+PV // At 150 degree centigrade
m_a = P/hp
printf("\n The rate at which air flows out of the tank is %f kg/h",m_a*3600)
//The answers vary due to round off error

