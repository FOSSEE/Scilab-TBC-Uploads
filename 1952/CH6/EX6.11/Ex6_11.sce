// chapter 6 , Example6.11 , pg 176
Tr=10^-14     //relaxation time  (in s)
T=300     //temperature     (in K)
n=6*10^28    //electron concentration    (in /m^3)
Me=9.11*10^-31    //mass of electron    (in Kg)
e=1.6*10^-19   //charge of electron   (in C)
k=1.38*10^-23     //Boltzmann constant    (in J/K)
sigma=(n*e^2*Tr)/(Me)     //Electrical conductivity 
K=(3*n*k^2*Tr*T)/(2*Me)     //Thermal conductivity   
L=K/(sigma*T)     //Lorentz number
printf("Electrical conductivity   (in /(ohm*m))")
disp(sigma)
printf("Thermal conductivity    (in W/(m*K))")
disp(K)
printf("Lorentz  number   (in(W*ohm)/K^2)")
disp(L)
