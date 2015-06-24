// chapter 6 , Example6 6 , pg 174
L= 2.26*10^-8    //Lorentz number   (in W*m /K^2)
T=27+273      //temperature  (in K)   (converting celsius into kelvin)
rho=1.72*10^-8     //electrical resistivity  (in ohm *m)

//according to Wiedemann-Franz law
K=(L*T)/rho     //thermal  conductivity
printf("Thermal conductivity =")
printf("K=%.0f  W/(m*K)",K)
