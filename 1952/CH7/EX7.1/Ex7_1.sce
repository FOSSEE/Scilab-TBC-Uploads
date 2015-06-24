// chapter 7 , Example7.1 , pg 208
Er=13.2       // relative permittivity
Me=9.11*10^-31      //mass of electron    (in Kg)
Mnc=0.067*Me
h=6.625*10^-34    //plancks constant  (in Js)
Eo=8.85*10^-12
e=1.6*10^-19      //electronic charge of electron (in C)
E=(Mnc*e^4)/(8*(Er*Eo)^2*h^2)      //Donor binding energy   (in J)
printf("Donor binding energy (in J)=")
disp(E)
printf("E=%.4f   eV",(E/e))
