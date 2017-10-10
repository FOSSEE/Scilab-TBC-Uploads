//Example 2.8, Page Number 84
//Effective Increase in the width of the Energy Gap Calculation
clc;
Lz=10*(10**-9) //Thickness in meter
m=9.1*(10**-31) //Mass of Electron in kilogram
me=0.068*m //Effective mass of electron
mh=0.56*m //Effective mass of holes
h=6.6*(10**-34) //Plancks Constant in meter square kilogram per second
e=1.6*(10**-19) //Charge of an electron in Coulombs

Eg=((h*h)/(8*(Lz*Lz)))*((1/me)+(1/mh)) //Eg is the effective increase in the width of the energy gap
Egn=Eg/e //Converting to eV
Egn=fpround(Egn,3)
mprintf("The Effective Increase in the width of the Energy Gap is %.3f eV",Egn)
