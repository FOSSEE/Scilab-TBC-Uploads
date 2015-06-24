clc
Eg1=1.43
disp(" Energy gap of GaAs = "+string(Eg1)+"eV") //initializing the value of energy gap of GaAs.
Eg2=2.43
disp(" Energy gap of GaP = "+string(Eg2)+"eV")//initializing the value of energy gap of Gap.
h=6.624*10^-34
disp(" Plank constant = "+string(h)+"joule")//initializing the value of plank constant.
c=3*10^8
disp(" Light speed = "+string(c)+"m/s") //initializing the value of speed of light.
x=(Eg2-Eg1)
disp("Difference between the energy gap of GaAs and GaP ,x=(Eg2-Eg1))= "+string(x)+" eV")//calculation
g=(0.4*x)
disp("Excess energy gap added to GaAs to form GaAsP,(0.4*x))= "+string(g)+" eV ")//calculation
Eg=(Eg1+g)
disp("Band gap energy GaAsP,Eg=(Eg1+g))= "+string(Eg)+" eV ")//calculation
lamda=(c*h/(Eg*1.6*10^-19))
disp("wavelength of radiation emitted,lamda=(c*h/Eg))= "+string(lamda)+" metre ")//calculation

//this is solved problem 2.7 of chapter 2.
