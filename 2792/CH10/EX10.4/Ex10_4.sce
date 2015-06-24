clc
mu_n=700
disp("mu_n = "+string(mu_n)+"cm^2(Vs)^-1") //initializing value of channel mobility 
VT = 1.5
disp("VT = "+string(VT)+"V") //initializing value of threshold velocity
VG=3
disp("VG = "+string(VG)+"V") //initializing value of gate bias
vs = 10^7
disp("vs = "+string(vs)+"cm/s") //initializing value of saturated velocity
L = 10^-4
disp("L = "+string(L)+"cm") //initializing value of channel length
fT1 = (mu_n*(VG-VT))/(2*%pi*(L^2))
disp("The cutoff frequency of the device in the constant mobility model is ,fT1 = (mu_n*(VG-VT))/(2*%pi*(L^2))= "+string(fT1)+"Hz")//calculation
fT2 = vs/(2*%pi*L)
disp("The cutoff frequency of the device in the saturation velocity model is fT2 = vs/(2*%pi*L)= "+string(fT2)+"Hz")//calculation
