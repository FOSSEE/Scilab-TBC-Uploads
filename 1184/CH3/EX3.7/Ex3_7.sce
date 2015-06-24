//Example 3-7,Page No- 113

clear
clc

Vpp = 178
R = 75

Vp =Vpp/2
Vrms = 0.707*Vp
PEP =(Vrms^2/R)

printf('The peak envelop power is %0.1f watt', PEP)
