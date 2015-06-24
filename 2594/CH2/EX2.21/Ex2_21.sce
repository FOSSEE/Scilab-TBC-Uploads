clc
Eg1=1.43
disp(" Energy gap of GaAs = "+string(Eg1)+" eV") //initializing the value of energy gap of GaAs.
Eg2=2.43
disp(" Energy gap of GaP = "+string(Eg2)+" eV")//initializing the value of energy gap of Gap.
h=6.624*10^-34
disp(" Plank constant = "+string(h)+" joule")//initializing the value of plank constant.
c=3*10^8
disp(" Light speed = "+string(c)+" m/s") //initializing the value of speed of light.
lamda=540*10^6
disp(" lamda = "+string(lamda)+" m") //initializing the value of wavelength.
x=(Eg2-Eg1)
disp("Difference between the energy gap of GaAs and GaP ,x=(Eg2-Eg1))= "+string(x)+" eV")//calculation
Eg=((c*h/(lamda*(1.6*10^-19))))
disp("Band gap energy,Eg=(c*h/lamda*(1.6*10^-19)))= "+string(Eg)+" eV")//calculation
X=Eg-(Eg1)
disp("X=Eg-(Eg1)= "+string(X))//calculation




//this is solved problem 2.8 of chapter 2.
//the value of Eg(band gap energy )is provided wrong in the book after calculation.Due to this value of X ,also differ.
