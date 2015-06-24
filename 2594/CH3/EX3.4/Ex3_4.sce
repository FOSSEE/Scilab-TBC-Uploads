clc
I=10*10^-3
disp("I = "+string(I)+" amphere") //initializing value of current flowing through the sample.
B=10*10^-6
disp("B= "+string(B)+" Tesla") //initializing value of magnetic field.
w=0.01*10^-2
disp("w = "+string(w)+" m") //initializing value of width of germanium sample. 
l=0.1*10^-2
disp("l = "+string(l)+" m") ////initializing value of length of germanium sample. 
t=0.001*10^-2
disp("t = "+string(t)+" m") ////initializing value of thickness of germanium sample. 
p=10^18
disp("p = "+string(p)+" atoms/cm^3") //initializing value of doped donor atoms.
e=1.6*10^-19
disp("e = "+string(e)+" columb") //initializing value of charge of electron.
Yh=((B)/(p*e*t))
disp("Hall voltage,Yh=((B)/(p*e*t)))= "+string(Yh)+" ohm")//calculation
