clc
e=1.6*10^-19
disp("e = "+string(e)+"columb") //initializing the value of electronic charge.
Ef_Efi=0.309
disp("Ef-Efi = "+string(Ef_Efi)+" eV") //initializing the value of difference in the energy levels.
no=2.5*10^13
disp("no = "+string(no)+" /cm^3") //initializing value of number of electrons per cm^3
T=300
disp("T = "+string(T)+" K") //initializing value of temperature.
ex=2.718
disp("exp = "+string(ex)) //initializing the value of exponential.
k=1.38*10^-23
disp("k = "+string(k)+" J/K") //initializing value of boltzmann constant.
n=no*(ex^((Ef_Efi*e)/(k*T)))
disp("number of electrons per cm^3, n=no*(ex^((Ef-Efi)/kT)))= "+string(n)+" /cm^3")//calculation



//This is solved problem 2.3 of chapter 2.
//The value used for "Ef-Efi" in the solution is different than provided in the question.
//I have used the value provided in the solution (i.e Ef_Efi=0.309) 

