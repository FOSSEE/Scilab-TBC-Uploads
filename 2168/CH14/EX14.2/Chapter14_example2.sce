clc
clear
//Input data
r=14//Compression ratio
p=1.2//Induction pipe pressure in kg/cm^2
bp=0.65//Exhaust back pressure in kg/cm^2
Tc=87+273//Charge temperature in K
Te=850+273//Exhaust temperature in K
T1=111+273//Temperature at the beginning of compression in K
g=1.2//Ratio of specific heats

//Calculations
Cw1=((bp*10^4)/Te)//specific heat in kJ/kg.K
Cw2=((p*10^4*(r-1))/Tc)//specific heat in kJ/kg.K
T3=((g*Te*Cw1+Cw2*Tc)/(Cw1*g+Cw2))//Temperature in K
t3=T3-273//Temperature in degree C
rw=(Cw1/Cw2)//Ratio of specific heats

//Output
printf('The ratio of the mass residuals to fresh charge is %3.4f',rw)
