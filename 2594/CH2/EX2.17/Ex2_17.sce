clc
e=1.6*10^-19
disp("e = "+string(e)+" columb") //initializing the value of electronic charge.
Ef=0.4065
disp("Ef = "+string(Ef)+" eV") //initializing the value of fermi level.
n=10^17
disp("n = "+string(n)+" /cm^3") //initializing value of number of electrons per cm^3.
T=300
disp("T = "+string(T)+" K") //initializing value of temperature.
ex=2.718
disp("exp = "+string(ex)) //initializing the value of exponential.
k=1.38*10^-23
disp("k = "+string(k)+" J/K") //initializing value of boltzmann constant.
no=n/(ex^((Ef*e)/(k*T)))
disp("Number of electrons per cm^3, no=n/(ex^((Ef)/kT)))= "+string(no)+" electrons/cm^3")//calculation


//this is solved problem 2.4 of chapter 2.
//the value used for "n" in the solution is different than provided in the question.
//I have used the value provided in the solution (i.e n=10^17) 

