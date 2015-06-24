// chapter 4 , Example 4.4 , pg 118
lam=2.8*10^-10//wavelength (in m)
theta=(30*%pi)/180//viewing angle(in radian)   (converting degree into radian)
c=3*10^8//speed of light(in m/sec)
h=6.625*10^-34//plancks constant(in J s)
m0=9.11*10^-31//rest mass of electron(in Kg)
lam1=lam+((2*h)*sin(theta/2)^2)/(m0*c) //wavelength of scattered radiation
printf("wavelength of scattered radiation(in m)\n")
disp(lam1)
printf("wavelength of scattered radiation(in Angstrom)\n")
disp(lam1*10^10)


//calculation is done assuming h=6.6*10^-34 Js in book
