clc
Tw_ = 75 // Initial temperature of water in degree Celsius
Ts_ = 5 // Atmospheric temperature in degree Celsius
m = 40 // mass of water in kg
cp = 4.2 // Specific heat capacity of water in kJ/kgK
printf("\n Example 8.3")
Tw= Tw_+273 // Initial temperature of water in K
Ts = Ts_+273 // Atmospheric temperature in K
Q1 = m*cp*(Tw-Ts) // Heat transfer

W = integrate('m*cp*(1-(Ts/T))','T',Ts,Tw)
UE = Q1-W // Available energy
printf("\n Available energy is %d kJ",UE)
//The answers vary due to round off error

