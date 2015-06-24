// Additional solved examples , Example 24 , pg 342
e=1.6*10^-19    //charge in electron (in C)
Ix=2*10^-3    //current (in A)
d=220*10^-4     //thickness   (in cm)
Bz=5*10^-5    //magnetic induction   (in Wb/cm^2)
Un=800    //electron mobility   (in cm^2/(V*s))
n=9*10^16     //doping concentration    (in atoms/cm^3)

sigma=n*e*(Un)    // electrical conductivity
rho=1/sigma    //resistivity
Rh=-1/(e*n)    //Hall coefficient
Vh=-(Ix*Bz)/(d*e*n)    //Hall  voltage
printf("Resistivity(in ohm*cm)")
disp(rho)
printf("Hall coefficient(in cm^3/C)")
disp(Rh)
printf("Hall voltage (in V)")
disp(Vh)
