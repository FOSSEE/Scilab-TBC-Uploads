// Additional solved numerical questions  , Example(set 3) 12_b , pg 356
ni=1.5*10^16     //intrinsic  carrier  density(in m^-3)
Un=1.35     //electron mobility   (in m^2/(V*s))
up=0.48     //hole mobility   (in m^2/(V*s))
e=1.6*10^-19    //charge in electron (in C)

Ix=10^-3    //current (in A)
d=100*10^-6     //thickness   (in m)
Bz=0.1    //magnetic induction   (in T)
Un1=0.07    //electron mobility   (in m^2/(V*s))
n=10^23     //doping concentration    (in atoms/m^3)

sigma=ni*e*(Un+up)    // electrical conductivity
rho=1/sigma    //resistivity
Vh=-(Ix*Bz)/(d*e*n)    //Hall  voltage
printf("Resistivity(in ohm*m)")
disp(rho)
printf("Hall voltage (in V)")
disp(Vh)
