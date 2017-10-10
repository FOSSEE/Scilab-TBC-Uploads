clc
Ts_ = 15 // Ambient temperature in degree Celsius
Tw1_ = 95 // Temperature of water sample 1 in degree Celsius
Tw2_ = 35// Temperature of water sample 2 in degree Celsius
m1 = 25 // Mass of water sample 1 in kg
m2 = 35 // Mass of water sample 2 in kg
cp = 4.2 // Specific heat capacity of water in kJ/kgK
printf("\n Example 8.4")
Ts = Ts_+273// Ambient temperature in K
Tw1 = Tw1_+273 // Temperature of water sample 1 in K
Tw2 = Tw2_+273// Temperature of water sample 2 in K
AE25 = integrate('m1*cp*(1-(Ts/T))','T',Ts,Tw1)
AE35 = integrate('m2*cp*(1-(Ts/T))','T',Ts,Tw2)
AEt = AE25 + AE35
Tm = (m1*Tw1+m2*Tw2)/(m1+m2) // Temperature after mixing
AE60 = integrate('(m1+m2)*cp*(1-(Ts/T))','T',Ts,Tm)
AE = AEt - AE60
printf("\n The decrease in the available energy is %f kJ",AE)

