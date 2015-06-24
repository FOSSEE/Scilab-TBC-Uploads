clc
Eg1=1.43
disp(" Energy gap of GaAs = "+string(Eg1)+"eV") //initializing the value of energy gap of GaAs.
Eg2=2.43
disp(" Energy gap of GaP = "+string(Eg2)+"eV")//initializing the value of energy gap of Gap.
h=6.624*10^-34
disp(" plank constant = "+string(h)+"joule")//initializing the value of plank constant.
c=3*10^8
disp(" light speed = "+string(c)+"m/s") //initializing the value of speed of light.
x=(Eg2-Eg1)
disp("Difference between the energy gap of GaAs and GaP ,x=(Eg2-Eg1))= "+string(x)+" eV")//calculation
g=(0.5*x)
disp("Excess energy gap added to GaAs to form GaAsP =(0.5*x))= "+string(g)+" eV ")//calculation
Eg=(Eg1+g)
disp("Band gap energy GaAs(0.5)P(0.5),Eg=(Eg1+g))= "+string(Eg)+" eV ")//calculation
lamda=(c*h/(Eg*1.6*10^-19))
disp("Wavelength of radiation emitted,w=(c*h/Eg))= "+string(lamda)+" metre ")//calculation
