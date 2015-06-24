clc
I=2*10^-3
disp("I = "+string(I)+" amphere") //initializing value of current flowing through the sample.
B=1000*10^-4
disp("B= "+string(B)+" Tesla") //initializing value of magnetic field.
w=0.2*10^-3
disp("w = "+string(w)+" mm") //initializing value of width of sample. 
l=2*10^-3
disp("l = "+string(l)+" m") //initializing value of length of sample. 
t=0.02*10^-3
disp("t = "+string(t)+" m") //initializing value of thickness of sample. 
Vaa=10
disp("Vaa = "+string(Vaa)+" V") //initializing value of applied voltage.
Vh=-10*10^-3
disp("Vh = "+string(Vh)+" V") //initializing value of hall voltage.
e=1.6*10^-19
disp("e = "+string(e)+" columb") //initializing value of charge of electron.
n=((I*B)/(e*t*Vh))
disp("electron concentration,n=((I*B)/(e*t*Vh))= "+string(n)+" m^-3")//calculation
un=(I*l/(e*abs(n)*Vaa*w*t))
disp("mobility,un=(I*L/(e*n*Vaa*w*t))= "+string(un)+" m^2/Vs")//calculation
