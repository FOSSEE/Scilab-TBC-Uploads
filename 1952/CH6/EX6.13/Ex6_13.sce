// chapter 6 , Example6.13 , pg 177
rho=1.54*10^-8    //resistivity    (in ohm*m)
E=100    //electric field intensity     (in V/m)
n=5.8*10^28     //electron concentration    (in /m^3)
e=1.6*10^-19     //charge of electron     (in C)
Me=9.11*10^-31    //mass of electron    (in Kg)
T=Me/(rho*n*e^2)      //relaxation time
Vd=(e*E*T)/Me      //drift velocity
U=Vd/E     //mobility
printf("Relaxation time  (in s)")
disp(T)
printf("Drift veloity  (in m/s)")
disp(Vd)
printf("Mobility(in m^2/(V*s))")
disp(U)
