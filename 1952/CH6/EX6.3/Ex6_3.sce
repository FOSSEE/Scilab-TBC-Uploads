// chapter 6 , Example6.3 , pg 171
d=2.7*10^3     //density    (in Kg/m^3)
Ma=27     //atomic weight
Me=9.11*10^-31     //mass of electron   (in Kg)
e=1.6*10^-19     //charge in electron   (in C)
T=10^-14     //relaxation time    (in s)
Na=6.022*10^23      //Avogadro  constant
N=3*10^3       //number of free electrons per atom
n=(d*Na*N)/Ma     //(in /m^3)
sigma=(n*e^2*T)/Me     //conductivity
printf("Conductivity of Al  (in /(ohm*m))")
disp(sigma)
