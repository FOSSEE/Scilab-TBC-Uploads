// chapter 6 , Example6.10 , pg 175
lam=4*10^-8    //maen free path of electrons   (in m)
n=8.4*10^28    //electron density    (in m^-3)
Vth=1.6*10^6    //average thermal velocity of electrons   (in m/s)
e=1.6*10^-19     //charge of electron   (in C)
Me=9.11*10^-31  //mass of electron    (in Kg)
sigma=(n*e^2*lam)/(Vth*Me)     //conductivity
printf("Electrical conductivity (in /(ohm*m))")
disp(sigma)
